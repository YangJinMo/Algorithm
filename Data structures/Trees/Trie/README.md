# 트라이 (Trie)

- Retrieval의 약자, Digital Tree / Radix Tree / Prefix Tree 라고도 불림.
- 말로 할 때 트리(tree)와 구분되지 않는 경향이 있었기 때문에 트라이(/ˈtraɪ/)라고 부르기 시작하게 되었다.

![Untitled](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Ff2e7067e-6353-4f2a-b585-42159554ae40%2FUntitled.png?table=block&id=80bc342f-3f83-44d1-995a-dbf800489ac6&spaceId=0aecca26-03f3-4421-bbad-cf26fcc377d2&width=1230&userId=fd888d04-97f4-4e8f-ac4e-3b136d324861&cache=v2)

- 예측 문자나 자동 완성에 필요한 사전을 저장하는 것이 일반적인 응용.
- 빠르게 조회, 삽입, 삭제할 수 있는 기능을 활용하는 응용.
- 맞춤법 검사나 하이픈 연결 소프트웨어에 사용 되는 알고리즘과 같은 근사 일치 알고리즘을 구현하는 데에도 적합.
- 탐색 트리의 일종.
- 주로 문자열이 키.

## **시작하기**

각 노드에 문자가 저장되는 n진 트리입니다.

영어에 대한 효율적인 접두사 일치를 용이하게 하는 핵심 데이터 구조이기도 합니다.

![Untitled](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F8fc94d31-0763-4eee-8d8a-be07f342f8c1%2FUntitled.png?table=block&id=6f2a61e0-c4a1-400a-bd7c-f98e584f11b6&spaceId=0aecca26-03f3-4421-bbad-cf26fcc377d2&width=1300&userId=fd888d04-97f4-4e8f-ac4e-3b136d324861&cache=v2)

Trie에 저장된 "Cat", "Cut", "Cute", "To", "B" 문자열의 예.

cut과 cute처럼 접두사가 일치하는 경우, 문자열의 마지막 문자에 점을 찍어 각각 다른 문자열임을 표현.

## **목적**

문자열 탐색 시, 단순하게 하나씩 비교하면서 탐색을 하는것보다 훨씬 효율적입니다. 단, 빠르게 탐색이 가능하다는 장점이 있지만 각 노드에서 자식들에 대한 포인터들을 배열로 모두 저장하고 있다는 점에서 저장 공간의 크기가 크다는 단점도 있습니다.

Trie는 다음과 같은 이점이 있는 해시 테이블을 대체할 수도 있습니다.

- 값을 조회하는 것은 일반적으로 더 나은 최악의 시간 복잡도를 갖습니다.
- 해시 테이블과 달리 Trie는 키 충돌에 대해 걱정할 필요가 없습니다.
- 요소에 대한 고유한 경로를 보장하기 위해 해싱 알고리즘이 필요하지 않습니다.
- Trie 구조는 알파벳순으로 정렬할 수 있습니다.

### 시간 복잡도

- 제일 긴 문자열의 길이를 `L` 총 문자열들의 수를 `M`이라 할 때 시간복잡도는 아래와 같습니다.
- 생성시 시간복잡도: `O(M*L)`, 모든 문자열을 넣어야하니 `M`개에 대해서 트라이 자료구조에 넣는건 가장 긴 문자열 길이만큼 걸리니 `L`만큼 걸려서 `O(M*L)`만큼 걸립니다. 물론 삽입 자체만은 `O(L)`만큼 걸립니다.
- 탐색시 시간복잡도: `O(L)`, 트리를 타고 들어가 봤자 가장 긴 문자열의 길이 만큼만 탐색하기 때문에 `O(L)`만큼 걸립니다.

## **구현**

다른 트리와 마찬가지로 Trie는 노드로 구성.

구현은 `TrieNode`클래스와 `Trie`클래스로 구성.

각각 `TrieNode`는 단어의 문자를 나타냅니다. 예를 들어 "cute"라는 단어는 다음과 같은 일련의 노드로 표시됩니다 `c -> u -> t -> e`.

`Trie`클래스는 삽입 논리를 관리하고 노드에 대한 참조를 유지합니다.

값(즉, 문자)을 저장하고 부모와 자식에 대한 참조를 가집니다.

```swift
class TrieNode<Key: Hashable> {
    var key: Key?
    weak var parent: TrieNode?
    var children: [Key: TrieNode] = [:]
    var isTerminating = false
    
    init(value: Key? = nil, parent: TrieNode? = nil) {
        self.key = value
        self.parent = parent
    }
    
    func add(child: Key) -> TrieNode<Key> {
        if children[child] == nil {
            children[child] = TrieNode(value: child, parent: self)
        }
        return children[child]!
    }
}
class Trie {
    typealias Node = TrieNode<Character>
    private let root: Node
    
    init() {
        root = Node()
    }
}
extension Trie {
    func insert(word: String) {
        guard !word.isEmpty else { return }
        
        var currentNode = root
        
        let characters = word.lowercased()
        
        for character in characters {
            currentNode = currentNode.add(child: character)
        }
        
        currentNode.isTerminating = true
    }
    
    func contains(word: String) -> Bool {
        guard !word.isEmpty else { return false }
        
        var currentNode = root
        
        let characters = word.lowercased()
        
        for character in characters {
            guard let child = currentNode.children[character] else {
                print("\\(word)는 저장되어 있는 단어가 아닙니다.")
                return false
            }
            currentNode = child
        }
        
        return currentNode.isTerminating
    }
    
    func remove(word: String) {
        guard !word.isEmpty else { return }
        
        var currentNode = root
        
        let characters = word.lowercased()
        
        for character in characters {
            guard let child = currentNode.children[character] else {
                return print("\\(word)는 저장되어 있는 단어가 아닙니다.")
            }
            currentNode = child
        }
        
        guard currentNode.isTerminating else {
            return print("\\(word)는 다른 단어의 부모 단어이기 때문에 지울 수 없습니다.")
        }
        
        currentNode.isTerminating = false
        
        while currentNode.children.isEmpty && !currentNode.isTerminating {
            currentNode.parent!.children[currentNode.key!] = nil
            currentNode = currentNode.parent!
        }
    }
}
let trie = Trie()

trie.insert(word: "car")
trie.insert(word: "car")
print(trie.contains(word: "car")) // true
trie.insert(word: "card")
trie.insert(word: "care")
trie.insert(word: "cared")
trie.insert(word: "cat")
trie.insert(word: "cate")
trie.insert(word: "banana")
trie.insert(word: "bananonaa")
trie.insert(word: "cute")
print(trie.contains(word: "cute")) // true
print(trie.contains(word: "cut")) // false

trie.insert(word: "cut")
print(trie.contains(word: "cut")) // true

trie.remove(word: "cutt")
print(trie.contains(word: "cut")) // true

trie.remove(word: "cu")
print(trie.contains(word: "cut")) // true

trie.remove(word: "aa")
print(trie.contains(word: "aa")) // true

trie.remove(word: "cut")
print(trie.contains(word: "cut")) // false
```

- Collection 프로토콜을 채택한 Trie

  ```swift
  public class TrieNode<Key: Hashable> { // 제네릭
      public var key: Key? // 노드의 데이터
      public weak var parent: TrieNode?
      // 부모 노드의 정보를 가지고 있어야 삭제 연산 구현.
      // 부모와 자식이 서로 참조하고 있으면 강한 참조 문제가 발생할 가능성 있으므로 weak로 약한 참조.
      public var children: [Key: TrieNode] = [:] // 이진 트리와 다르게 자식 노드 많을 수 있으니 Dictionary
      public var isTerminating = false  // 단어의 끝을 표시하는 용도.
      public init(key: Key? = nil, parent: TrieNode? = nil) {
          self.key = key
          self.parent = parent
      }
  }
  ```

  ```swift
  public class Trie<CollectionType: Collection> where CollectionType.Element: Hashable {
      // Trie의 제네릭 타입인 CollectionType은 Collection 프로토콜을 채택한 것이어야
      // 그러한 CollectionType 중에 Element가 Hashable 프로토콜을 채택한 것이어야 함.
      public typealias Node = TrieNode<CollectionType.Element>
      
      private let root = Node() // 루트 노드.
      
      public init() { }
      
      public func insert(_ collection: CollectionType) {
          var current = root // 루트 노드부터 추적 시작.
          
          for element in collection { // Collection 프로토콜을 채택했기 때문에 collection을 for loop 쓸 수 있음.
              if current.children[element] == nil {  // 없으면 새로운 인스턴스 생성.
                  current.children[element] = Node(key: element, parent: current)
              }
              current = current.children[element]! // 반복문 실행 전에 자식 노드로 변경.
          }
          current.isTerminating = true // 저장 시, 단어의 마지막을 표현하기 위해 Bool 값 저장.
      }
      
      public func contains(_ collection: CollectionType) -> Bool {
          var current = root
          
          for element in collection {
              guard let child = current.children[element] else { // 자식 노드가 nil이면 저장되어 있지 않다는 의미.
                  return false // 끝까지 와서 일치하는게 없으면 false 반환.
              }
              current = child // 반복문 실행 전에 자식 노드로 변경.
          }
          return current.isTerminating // 저장한 단어의 마지막인지 여부 반환.
      }
      
      public func remove(_ collection: CollectionType) {
          var current = root
          
          for element in collection {
              guard let child = current.children[element] else { return }
              current = child
          }
          
          guard current.isTerminating else { return print("부모 노드이기 때문에 지울 수 없습니다.") }
          // 동시에 루트 노드가 아니란 것도 알 수 있음.
          
          current.isTerminating = false
          // 현재 노드의 isTerminating를 false로 변경하여 단어를 1차적으로 제거.
          
          while current.children.isEmpty && !current.isTerminating {
              // 1. 자식 노드가 비어있지 않으면, 중복되지만 저장되어 있는 더 긴 단어가 있다는 것이므로 삭제하면 안됨.
              // 2. isTerminating이 true면, 다른 단어가 있는 것이니 더 이상 지우면 안됨.
              current.parent!.children[current.key!] = nil
              current = current.parent!
          }
      }
  }
  
  extension Trie where CollectionType: RangeReplaceableCollection {
      // RangeReplaceableCollection 프로토콜은 Collection 프로토콜을 상속한 프로토콜.
      // Array의 append 메소드는 Array가 RangeReplaceableCollection 프로토콜을 상속 받았기 때문에 쓸 수 있음.
      public func collections(startingWith prefix: CollectionType) -> [CollectionType] {
          var current = root
          
          for element in prefix {
              guard let child = current.children[element] else { return [] }
              current = child
          }
          return collections(startingWith: prefix, after: current)
          // 접두어 끝이 현재의 현재 노드니까 현재 노드에 딸려있는 자식 노드의 단어들 배열로 가져올 메소드.
      }
      
      private func collections(startingWith prefix: CollectionType, after node: Node) -> [CollectionType] {
          var result = [CollectionType]() // 단어들을 담을 배열.
          
          if node.isTerminating { // prefix 자체가 한 단어면 반환 배열에 포함.
              result.append(prefix)
          }
          
          for child in node.children.values {
              // values는 Dictionary 구조체의 프로퍼티.
              // 자식 노드의 수만큼 반복.
              var prefix = prefix
              prefix.append(child.key!)
              // 자식 노드의 수만큼 반복하는 것이기 때문에 자식 노드가 있는지 확인 없이 강제 언래핑.
              // prefix는 RangeReplaceableCollection 프로토콜을 채택한 타입이기 때문에 append 메소드 사용 가능.
              result.append(contentsOf: collections(startingWith: prefix, after: child))
              // 재귀 호출 시작
              // 1. 종료 조건: 반복문의 node.children.values이 0이면 종료 -> 만족
              // 2. 작은 방향으로 이루어 지는지: prefix가 커져서 트리의 자식노드인 하위로 이동하므로 문제의 범위는 작아짐. -> 만족
          }
          return result
      }
  }
  ```

  ```swift
  let trie = Trie<String>()
  
  trie.insert("car")
  trie.insert("car")
  print(" 1. car라는 단어가 포함되어 있어? \\(trie.contains("car"))")
  trie.insert("card")
  trie.insert("care")
  trie.insert("cared")
  trie.insert("cat")
  trie.insert("cate")
  trie.insert("banana")
  trie.insert("bananonaa")
  print(" 2. card 삭제 전: \\(trie.contains("card"))")
  trie.remove("card")
  print(" 2. card 삭제 후: \\(trie.contains("card"))")
  
  print(" 3. ca로 시작하는 단어들은 \\n \\(trie.collections(startingWith: "ca"))")
  print(" 3. care로 시작하는 단어들은 \\n \\(trie.collections(startingWith: "care"))")
  print(" 3. ba로 시작하는 단어들은 \\n \\(trie.collections(startingWith: "ba"))")
  
  print(" 4. catt 삭제 전: \\(trie.contains("cat"))")
  trie.remove("catt")
  print(" 4. catt 삭제 후: \\(trie.contains("cat"))")
  trie.remove("")
  ```



### 참고

[트라이 (컴퓨팅) - 위키백과, 우리 모두의 백과사전](https://ko.wikipedia.org/wiki/트라이_(컴퓨팅))

[swift-algorithm-club/Trie at master · raywenderlich/swift-algorithm-club](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Trie)

[[스위프트:자료구조\] 트라이: Trie: 문자열 찾기: 단어 찾기](https://the-brain-of-sic2.tistory.com/40)

[Swift Algorithm Club: Swift Trie Data Structure](https://www.raywenderlich.com/892-swift-algorithm-club-swift-trie-data-structure)

[[Algorithm\] 트라이(Trie) 개념과 기본 문제](https://twpower.github.io/187-trie-concept-and-basic-problem)

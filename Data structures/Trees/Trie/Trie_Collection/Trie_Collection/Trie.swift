//
//  Trie.swift
//  Trie_Collection
//
//  Created by Jmy on 2021/09/11.
//

/// Trie adopting the Collection protocol
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

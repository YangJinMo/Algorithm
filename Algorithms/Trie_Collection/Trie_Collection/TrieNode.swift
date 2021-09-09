//
//  TrieNode.swift
//  Trie_Collection
//
//  Created by Jmy on 2021/09/09.
//

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

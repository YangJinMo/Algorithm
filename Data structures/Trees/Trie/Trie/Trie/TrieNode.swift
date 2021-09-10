//
//  TrieNode.swift
//  Trie
//
//  Created by Jmy on 2021/09/11.
//

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

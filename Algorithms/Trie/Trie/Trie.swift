//
//  Trie.swift
//  Trie
//
//  Created by Jmy on 2021/09/09.
//

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
                print("\(word)는 저장되어 있는 단어가 아닙니다.")
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
                return print("\(word)는 저장되어 있는 단어가 아닙니다.")
            }
            currentNode = child
        }
        
        guard currentNode.isTerminating else {
            return print("\(word)는 다른 단어의 부모 단어이기 때문에 지울 수 없습니다.")
        }
        
        currentNode.isTerminating = false
        
        while currentNode.children.isEmpty && !currentNode.isTerminating {
            currentNode.parent!.children[currentNode.key!] = nil
            currentNode = currentNode.parent!
        }
    }
}

//
//  main.swift
//  Trie
//
//  Created by Jmy on 2021/09/11.
//

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

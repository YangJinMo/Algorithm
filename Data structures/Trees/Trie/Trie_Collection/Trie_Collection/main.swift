//
//  main.swift
//  Trie_Collection
//
//  Created by Jmy on 2021/09/11.
//

let trie = Trie<String>()

trie.insert("car")
trie.insert("car")
print(" 1. car라는 단어가 포함되어 있어? \(trie.contains("car"))")
trie.insert("card")
trie.insert("care")
trie.insert("cared")
trie.insert("cat")
trie.insert("cate")
trie.insert("banana")
trie.insert("bananonaa")
print(" 2. card 삭제 전: \(trie.contains("card"))")
trie.remove("card")
print(" 2. card 삭제 후: \(trie.contains("card"))")

print(" 3. ca로 시작하는 단어들은 \n \(trie.collections(startingWith: "ca"))")
print(" 3. care로 시작하는 단어들은 \n \(trie.collections(startingWith: "care"))")
print(" 3. ba로 시작하는 단어들은 \n \(trie.collections(startingWith: "ba"))")

print(" 4. catt 삭제 전: \(trie.contains("cat"))")
trie.remove("catt")
print(" 4. catt 삭제 후: \(trie.contains("cat"))")
trie.remove("")

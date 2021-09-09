//
//  10809.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/23.
//

/**
 - 제목: 알파벳 찾기
 - 문제: 알파벳 소문자로만 이루어진 단어 S가 주어진다. 각각의 알파벳에 대해서, 단어에 포함되어 있는 경우에는 처음 등장하는 위치를, 포함되어 있지 않은 경우에는 -1을 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 단어 S가 주어진다. 단어의 길이는 100을 넘지 않으며, 알파벳 소문자로만 이루어져 있다.
 - 출력: 각각의 알파벳에 대해서, a가 처음 등장하는 위치, b가 처음 등장하는 위치, ... z가 처음 등장하는 위치를 공백으로 구분해서 출력한다.
       만약, 어떤 알파벳이 단어에 포함되어 있지 않다면 -1을 출력한다. 단어의 첫 번째 글자는 0번째 위치이고, 두 번째 글자는 1번째 위치이다.
 - 원문: https://www.acmicpc.net/problem/10809
 */

class Problem_10809 {
  func solution_1() {
    let alphabet: [String] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    let line: [String] = readLine()!.map { String($0) }
    
    for letter in alphabet {
      if line.contains(letter), let index: Array<String>.Index = line.firstIndex(of: letter) {
        print(index, terminator: " ")
      } else {
        print("-1", terminator:" ")
      }
    }
  }
  func solution_2() {
    let aScalars: String.UnicodeScalarView = "a".unicodeScalars
    let zScalars: String.UnicodeScalarView = "z".unicodeScalars
    let aCode: UInt32 = aScalars[aScalars.startIndex].value
    let zCode: UInt32 = zScalars[zScalars.startIndex].value
    let alphabet: [Character] = (aCode...zCode).map { Character(UnicodeScalar($0)!) }
    //let alphabet: [Character] = (0..<26).map { Character(UnicodeScalar(aCode + $0)!) }
    let line: [String.Element] = readLine()!.map { $0 }
    
    for letter in alphabet {
      print(line.contains(letter) ? line.firstIndex(of: letter)! : -1, terminator: " ")
    }
  }
  func solution_3() {
    let str: String = String(readLine()!)
    
    for i in Character("a").asciiValue!...Character("z").asciiValue! {
      if let rangeI: Range<String.Index> = str.range(of: String(UnicodeScalar(i))) {
        let index: String.IndexDistance = str.distance(from: str.startIndex, to: rangeI.lowerBound)
        print(index, terminator: " ")
      } else {
        print("-1", terminator: " ")
      }
    }
  }
  func solution_4() {
    var arr = [Int](repeating: -1, count: 26)
    _ = readLine()!.map{ Int($0.asciiValue!) - 97 }.enumerated().map{ if arr[$1] == -1 { arr[$1] = $0 } }
    for i in arr { print(i, terminator: " ") }
  }
  func solution_5() {
    var arr = [Int](repeating: -1, count: 26)
    for (i, e) in readLine()!.map({ Int($0.asciiValue!) - 97 }).enumerated() {
      if arr[e] == -1 {
        arr[e] = i
      }
    }
    for i in arr { print(i, terminator: " ") }
  }
  func solution_6() {
    let line = readLine()!
    print(Array("abcdefghijklmnopqrstuvwxyz").map { line.contains($0) ? Array(line).firstIndex(of: $0)! : -1 }.map { String($0) }.joined(separator: " "))
  }
  func solution_66() {
    let l=readLine()!;print(Array("abcdefghijklmnopqrstuvwxyz").map{l.contains($0) ? Array(l).firstIndex(of:$0)!:-1},terminator:" ")
  }
  func solution_7() {
    let arr = Array(readLine()!)
    for c in UnicodeScalar("a").value...UnicodeScalar("z").value {
      print(arr.firstIndex(of: Character(UnicodeScalar(c)!)) ?? -1, terminator: " ")
    }
  }
  func solution_8() {
    let arr = Array(readLine()!)
    print((UnicodeScalar("a").value...UnicodeScalar("z").value).map { String(arr.firstIndex(of: Character(UnicodeScalar($0)!)) ?? -1) }.joined(separator: " "))
  }
  func solution_9() {
    let l=readLine()!;print((97...122).map{String(Array(l).firstIndex(of:Character(UnicodeScalar($0)!)) ?? -1)}.joined(separator:" "))
  }
  /// https://www.acmicpc.net/short/status/10809/74/1
  /// 1등
  func solution_zzimss() {
    let l=readLine()!;for c in 97...122{print(Array(l).firstIndex(of:Character(UnicodeScalar(c)!)) ?? -1,terminator:" ")}
  }
}

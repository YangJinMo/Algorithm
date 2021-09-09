//
//  1316.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/08/03.
//

/**
 - 제목: 그룹 단어 체커
 - 문제: 그룹 단어란 단어에 존재하는 모든 문자에 대해서, 각 문자가 연속해서 나타나는 경우만을 말한다.
       예를 들면, ccazzzzbb는 c, a, z, b가 모두 연속해서 나타나고, kin도 k, i, n이 연속해서 나타나기 때문에 그룹 단어이지만, aabbbccb는 b가 떨어져서 나타나기 때문에 그룹 단어가 아니다.
       단어 N개를 입력으로 받아 그룹 단어의 개수를 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 단어의 개수 N이 들어온다. N은 100보다 작거나 같은 자연수이다. 둘째 줄부터 N개의 줄에 단어가 들어온다. 단어는 알파벳 소문자로만 되어있고 중복되지 않으며, 길이는 최대 100이다.
 - 출력: 첫째 줄에 그룹 단어의 개수를 출력한다.
 - 원문: https://www.acmicpc.net/problem/1316
 */

class Problem_1316 {
  func solution_1() {
    var n = Int(readLine()!)!
    for _ in 1...n {
      let str: String = readLine()!
      var chaSet: Set<Character> = []
      
      for (idx, cha) in str.enumerated() {
        if chaSet.contains(cha) {
          let i = str.index(str.startIndex, offsetBy: idx - 1)
          if str[i] != cha {
            chaSet = []
            n -= 1
            break
          }
        } else {
          chaSet.insert(cha)
        }
      }
    }
    print(n)
  }
  func solution_2() {
    var n=Int(readLine()!)!;for _ in 1...n{var s=readLine()!,t:Set<Character>=[];for(i,c)in s.enumerated(){if t.contains(c){if s[s.index(s.startIndex,offsetBy:i-1)] != c{n-=1;break}};t.insert(c)}};print(n)
  }
  func solution_3() {
    var n=Int(readLine()!)!;for _ in 1...n{var s=readLine()!,t="";for(i,c)in s.enumerated(){if i>0&&t.contains(c){if s[s.index(s.startIndex,offsetBy:i-1)] != c{n-=1;break}};t.append(c)}};print(n)
  }
  func solution_4() {
    var count: Int = Int(readLine()!)!

    NextWord: for _ in 1...count {
      var alpha: Set<Character> = []
      var before: Character = "?"
      for current in readLine()! {
        if current != before {
          if alpha.contains(current) {
            count -= 1
            continue NextWord
          }
          alpha.insert(current)
        }
        before = current
      }
    }
    print(count)
  }
  func solution_5() {
    var n=Int(readLine()!)!;for _ in 1...n{var a:Set<Character>=[],b:Character="?";for c in readLine()!{if c != b{if a.contains(c){n-=1;break};a.insert(c)};b=c}};print(n)
  }
  /// https://www.acmicpc.net/short/status/1316/74/1
  /// 1등
  func solution_zzimss() {
    var n=Int(readLine()!)!;for _ in 1...n{var a="",b:Character="?";for c in readLine()!{if c != b{if a.contains(c){n-=1;break};a.append(c)};b=c}};print(n)
  }
}

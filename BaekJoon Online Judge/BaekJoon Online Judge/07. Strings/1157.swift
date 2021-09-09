//
//  1157.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/28.
//

/**
 - 제목: 단어 공부
 - 문제: 알파벳 대소문자로 된 단어가 주어지면, 이 단어에서 가장 많이 사용된 알파벳이 무엇인지 알아내는 프로그램을 작성하시오. 단, 대문자와 소문자를 구분하지 않는다.
 - 입력: 첫째 줄에 알파벳 대소문자로 이루어진 단어가 주어진다. 주어지는 단어의 길이는 1,000,000을 넘지 않는다.
 - 출력: 첫째 줄에 이 단어에서 가장 많이 사용된 알파벳을 대문자로 출력한다. 단, 가장 많이 사용된 알파벳이 여러 개 존재하는 경우에는 ?를 출력한다.
 - 원문: https://www.acmicpc.net/problem/1157
 */

class Problem_1157 {
  func solution_1() {
    let line = readLine()!.uppercased()
    var dic = [String : Int]()
    
    for s in line {
      let S = String(s)
      
      if dic[S] == nil {
        dic[S] = 1
      } else {
        dic[S]? += 1
      }
    }
    
    var result = [String]()
    
    for key in dic.keys {
      if dic[key] == dic.values.max()! {
        result.append(key)
      }
    }
    print(result.count > 1 ? "?" : result[0])
  }
  func solution_2() {
    var d=[String:Int](),r=[String]();for s in readLine()!.uppercased(){let S=String(s);if d[S]==nil{d[S]=1}else{d[S]?+=1}};for k in d.keys{if d[k]==d.values.max()!{r.append(k)}};print(r.count>1 ?"?":r[0])
  }
  func solution_3() {
    var T = [Character:Int]()
    for c in readLine()!.uppercased() { T[c] = (T[c] ?? 0) + 1 }
    let filteredT = T.filter { $0.value == T.values.max() }

    print(filteredT.count>1 ? "?" : filteredT.keys.map { String($0) }.joined());
  }
  func solution_4() {
    var d=[Character:Int]();for c in readLine()!.uppercased(){d[c]=(d[c] ?? 0)+1};let f=d.filter{$0.value==d.values.max()};print(f.count>1 ?"?":f.first!.key)
  }
  func solution_5() {
    let characters: [Character] = readLine()!.uppercased().map { $0 }
    var counted: [Character: Int] = [:]
    
    for c in Set(characters) {
      counted[c] = characters.filter { $0 == c }.count
    }
    
    let filtered = counted.filter { $0.value == counted.values.max()! }
    
    print(filtered.count > 1 ? "?" : filtered.first!.key)
  }
  /// https://www.acmicpc.net/short/status/1157/74/1
  /// 1등
  func solution_zzimss() {
    var d=[Character:Int]();for c in readLine()!.uppercased(){d[c]=(d[c] ?? 0)+1};let f=d.filter{$0.value==d.values.max()};print(f.count>1 ?"?":f.first!.key)
  }
}

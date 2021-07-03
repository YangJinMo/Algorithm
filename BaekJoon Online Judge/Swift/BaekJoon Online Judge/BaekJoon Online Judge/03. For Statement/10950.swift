//
//  10950.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/25.
//

/**
 - 제목: A+B - 3
 - 문제: 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 테스트 케이스의 개수 T가 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. `(0 < A, B < 10)`
 - 출력: 각 테스트 케이스마다 A+B를 출력한다.
 - 원문: https://www.acmicpc.net/problem/10950
 */

class Problem_10950 {
  func solution_1() {
    let t: Int = Int(readLine()!)!
    
    for _ in 1...t {
      let lineArr: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
      let a: Int = lineArr[0]
      let b: Int = lineArr[1]
      
      if a > 0 && b < 10 {
        print(a + b)
      }
    }
  }
  func solution_2() {
    let t: Int = Int(readLine()!)!
    
    for _ in 1...t {
      print(readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +))
    }
  }
  func solution_3() {
    for _ in 1...Int(readLine()!)! {
      print(readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +))
    }
  }
  func solution_4() {
    for _ in 1...Int(readLine()!)!{let l=readLine()!.split{$0==" "}.map{Int($0)!};print(l[0]+l[1])}
  }
  /// https://www.acmicpc.net/short/status/10950/74/1
  /// 2등
  func solution_zzimss() {
    for _ in 1...Int(readLine()!)!{print(readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0,+))}
  }
  func solution_wapas() {
    (1...Int(readLine()!)!).map{$0;print(readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0,+))}
  }
}

//
//  11021.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/29.
//

/**
 - 제목: A+B - 7
 - 문제: 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 테스트 케이스의 개수 T가 주어진다.
       각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 `<` A, B `<` 10)
 - 출력: 각 테스트 케이스마다 "Case #x: "를 출력한 다음, A+B를 출력한다. 테스트 케이스 번호는 1부터 시작한다.
 - 원문: https://www.acmicpc.net/problem/11021
 */

class Problem_11021 {
  func solution_1() {
    for i in 1...Int(readLine()!)! {
      let lineArr = readLine()!.split{$0==" "}.map{Int($0)!}
      let a = lineArr[0]
      let b = lineArr[1]
      print("Case #\(i): \(a + b)")
    }
  }
  func solution_2() {
    for i in 1...Int(readLine()!)! {
      print("Case #\(i):",readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0,+))
    }
  }
  func solution_3() {
    (1...Int(readLine()!)!).map {
      print("Case #\($0):",readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0,+))
    }
  }
  func solution_4() {
    for i in 1...Int(readLine()!)!{print("Case #\(i):",readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0,+))}
  }
  /// https://www.acmicpc.net/short/status/11021/74/1
  /// 1등
  func solution_zzimss() {
    (1...Int(readLine()!)!).map{print("Case #\($0):",readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0,+))}
  }
}

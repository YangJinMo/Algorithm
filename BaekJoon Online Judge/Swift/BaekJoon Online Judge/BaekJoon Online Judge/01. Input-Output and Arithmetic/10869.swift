//
//  10869.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/13.
//

/**
 - 제목: 사칙연산
 - 문제: 두 자연수 A와 B가 주어진다. 이때, A+B, A-B, A*B, A/B(몫), A%B(나머지)를 출력하는 프로그램을 작성하시오.
 - 입력: 두 자연수 A와 B가 주어진다. (1 ≤ A, B ≤ 10,000)
 - 출력: 첫째 줄에 A+B, 둘째 줄에 A-B, 셋째 줄에 A*B, 넷째 줄에 A/B, 다섯째 줄에 A%B를 출력한다.
 - 원문: https://www.acmicpc.net/problem/10869
 */

class Problem_10869 {
  func solution_1() {
    let line: String = readLine() ?? ""
    let lineArr: [String.SubSequence] = line.split(separator: " ")
    let a: Int = Int(lineArr[0]) ?? 0
    let b: Int = Int(lineArr[1]) ?? 0
    print(a + b)
    print(a - b)
    print(a * b)
    print(a / b)
    print(a % b)
  }
  func solution_2() {
    let lineArr: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
    let a: Int = lineArr[0]
    let b: Int = lineArr[1]
    print(a + b)
    print(a - b)
    print(a * b)
    print(a / b)
    print(a % b)
  }
  /// https://www.acmicpc.net/short/status/10869/74/1
  /// 1등
  func solution_zzimss() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!},a=l[0],b=l[1];print(a+b,a-b,a*b,a/b,a%b,separator:"\n")
  }
}

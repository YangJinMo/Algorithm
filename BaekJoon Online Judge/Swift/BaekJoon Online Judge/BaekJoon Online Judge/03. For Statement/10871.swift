//
//  10871.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/03.
//

/**
 - 제목: X보다 작은 수
 - 문제: 정수 N개로 이루어진 수열 A와 정수 X가 주어진다. 이때, A에서 X보다 작은 수를 모두 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 N과 X가 주어진다. (1 ≤ N, X ≤ 10,000)
       둘째 줄에 수열 A를 이루는 정수 N개가 주어진다. 주어지는 정수는 모두 1보다 크거나 같고, 10,000보다 작거나 같은 정수이다.
 - 출력: X보다 작은 수를 입력받은 순서대로 공백으로 구분해 출력한다. X보다 작은 수는 적어도 하나 존재한다.
 - 원문: https://www.acmicpc.net/problem/10871
 */

class Problem_10871 {
  func solution_1() {
    let l = readLine()!.split{$0==" "}.map{Int($0)!}
    let a = readLine()!.split{$0==" "}.map{Int($0)!}
    let x = l[1]
    a.filter { $0 < x }.map{ print($0, terminator: " ") }
  }
  func solution_2() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!};readLine()!.split{$0==" "}.map{Int($0)!}.filter{$0<l[1]}.map{print($0,terminator:" ")}
  }
  /// https://www.acmicpc.net/short/status/10871/74/1
  /// 1등
  func solution_zzimss() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!}[1];readLine()!.split{$0==" "}.map{Int($0)!}.filter{$0<l}.map{print($0,terminator:" ")}
  }
}

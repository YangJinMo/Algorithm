//
//  10818.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/08.
//

/**
 - 제목: 최소, 최대
 - 문제: N개의 정수가 주어진다. 이때, 최솟값과 최댓값을 구하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 정수의 개수 N (1 ≤ N ≤ 1,000,000)이 주어진다.
 둘째 줄에는 N개의 정수를 공백으로 구분해서 주어진다. 모든 정수는 -1,000,000보다 크거나 같고, 1,000,000보다 작거나 같은 정수이다.
 - 출력: 첫째 줄에 주어진 정수 N개의 최솟값과 최댓값을 공백으로 구분해 출력한다.
 - 원문: https://www.acmicpc.net/problem/10818
 */

class Problem_10818 {
  func solution_1() {
    readLine()
    let m = readLine()!.split{$0==" "}.map{Int($0)!}.sorted()
    print(m.first!, m.last!)
  }
  func solution_2() {
    readLine()
    let m = readLine()!.split{$0==" "}.map{Int($0)!}
    print(m.min()!, m.max()!)
  }
  func solution_3() {
    readLine()
    let a=readLine()!.split{$0==" "}.map{Int($0)!}
    var (n,m)=(1000000, -1000000)
    
    for i in a {
      if n>i {n=i}
      if m<i {m=i}
    }
    print(n, m)
  }
  func solution_4() {
    readLine();let m=readLine()!.split{$0==" "}.map{Int($0)!};print(m.min()!,m.max()!)
  }
  func solution_5() {
    readLine();let m=readLine()!.split{$0==" "}.map{Int($0)!}.sorted();print(m.first!,m.last!)
  }
  /**
   전에는 그렇지 않았지만 현재는
   .map{Int($0)!} 에서는 시간 초과가 뜨므로
   .map{Int(String($0))!} or .map{Int("\($0)")!} 사용
   */
  func solution_6() {
    readLine();let m=readLine()!.split{$0==" "}.map{Int(String($0))!};print(m.min()!,m.max()!)
  }
  func solution_7() {
    readLine();let m=readLine()!.split{$0==" "}.map{Int(String($0))!}.sorted();print(m.first!,m.last!)
  }
  /// https://www.acmicpc.net/short/status/10818/74/1
  /// 3등
  func solution_zzimss() {
    readLine();let m=readLine()!.split{$0==" "}.map{Int("\($0)")!};print(m.min()!,m.max()!)
  }
}

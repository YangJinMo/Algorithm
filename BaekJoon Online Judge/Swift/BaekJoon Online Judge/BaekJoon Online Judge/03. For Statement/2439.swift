//
//  2439.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/02.
//

/**
 - 제목: 별 찍기 - 2
 - 문제: 첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제
       하지만, 오른쪽을 기준으로 정렬한 별(예제 참고)을 출력하시오.
 - 입력: 첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.
 - 출력: 첫째 줄부터 N번째 줄까지 차례대로 별을 출력한다.
 - 원문: https://www.acmicpc.net/problem/2439
 */

class Problem_2439 {
  func solution_1() {
    let l = Int(readLine()!)!
    var s = ""
    for i in 1...l {
      for j in 1...l {
        s += l-j-i<0 ?"*":" "
      }
      print(s)
      s = ""
    }
  }
  func solution_2() {
    var l=Int(readLine()!)!,s="";for i in 1...l{for j in 1...l{s+=l-j-i<0 ?"*":" "};print(s);s=""}
  }
  func solution_3() {
    var l=Int(readLine()!)!,s="";(1...l).map{i in(1...l).map{s+=l-$0-i<0 ?"*":" "};print(s);s=""}
  }
  func solution_4() {
    var l=Int(readLine()!)!,s="";for i in 1...l{(1...l).map{s+=l-$0-i<0 ?"*":" "};print(s);s=""}
  }
  func solution_5() {
    let l = Int(readLine()!)!
    for i in 1...l {
      var s = ""
      for j in 1...l {
        s += l-j-i<0 ?"*":" "
      }
      print(s)
    }
  }
  func solution_6() {
    var l=Int(readLine()!)!,s="";(1...l).map{for j in 1...l{s+=l-j-$0<0 ?"*":" "};print(s);s=""}
  }
  func solution_7() {
    let l=Int(readLine()!)!;(1...l).map{var s="";for j in 1...l{s+=l-j-$0<0 ?"*":" "};print(s)}
  }
  /// https://www.acmicpc.net/short/status/2439/74/1
  /// 1등
  func solution_zzimss() {
    let l=Int(readLine()!)!;for i in 1...l{var s="";(1...l).map{s+=l-$0-i<0 ?"*":" "};print(s)}
  }
}

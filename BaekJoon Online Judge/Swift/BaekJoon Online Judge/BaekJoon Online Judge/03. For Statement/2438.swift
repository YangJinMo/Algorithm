//
//  2438.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/01.
//

/**
 - 제목: 별 찍기 - 1
 - 문제: 첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제
 - 입력: 첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.
 - 출력: 첫째 줄부터 N번째 줄까지 차례대로 별을 출력한다.
 - 원문: https://www.acmicpc.net/problem/2438
 */

class Problem_2438 {
  func solution_1() {
    var l = ""
    for _ in 1...Int(readLine()!)! {
      l += "*"
      print(l)
    }
  }
  func solution_2() {
    var l="";(1...Int(readLine()!)!).map{$0;l+="*";print(l)}
  }
  /// https://www.acmicpc.net/short/status/2438/74/1
  /// 2등 - 같은 코드 길이
  func solution_zzimss() {
    var l="";for _ in 1...Int(readLine()!)!{l+="*";print(l)}
  }
}

//
//  2741.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/27.
//

/**
 - 제목: N 찍기
 - 문제: 자연수 N이 주어졌을 때, 1부터 N까지 한 줄에 하나씩 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 100,000보다 작거나 같은 자연수 N이 주어진다.
 - 출력: 첫째 줄부터 N번째 줄 까지 차례대로 출력한다.
 - 원문: https://www.acmicpc.net/problem/2741
 */

class Problem_2741 {
  func solution_1() {
    for i in 1...Int(readLine()!)!{print(i)}
  }
  /// https://www.acmicpc.net/short/status/2741/74/1
  /// 5등 - 같은 코드
  func solution_zzimss() {
    (1...Int(readLine()!)!).map{print($0)}
  }
}

//
//  8393.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/26.
//

/**
 - 제목: 합
 - 문제: n이 주어졌을 때, 1부터 n까지 합을 구하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 n (1 ≤ n ≤ 10,000)이 주어진다.
 - 출력: 1부터 n까지 합을 출력한다.
 - 원문: https://www.acmicpc.net/problem/8393
 */

class Problem_8393 {
  func solution_1() {
    let n: Int = Int(readLine()!)!
    var sum: Int = 0

    for i in 1...n {
       sum += i
    }
    print(sum)
  }
  /// https://www.acmicpc.net/short/status/8393/74/1
  /// 10등
  func solution_zzimss() {
    print((1...Int(readLine()!)!).reduce(0,+))
  }
}

//
//  11720.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/22.
//

/**
 - 제목: 숫자의 합
 - 문제: N개의 숫자가 공백 없이 쓰여있다. 이 숫자를 모두 합해서 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 숫자의 개수 N (1 ≤ N ≤ 100)이 주어진다. 둘째 줄에 숫자 N개가 공백없이 주어진다.
 - 출력: 입력으로 주어진 숫자 N개의 합을 출력한다.
 - 원문: https://www.acmicpc.net/problem/11720
 */

class Problem_11720 {
  func solution_1() {
    readLine();print(readLine()!.map{Int(String($0))!}.reduce(0,+))
  }
  /// https://www.acmicpc.net/short/status/11720/74/1
  /// 1등
  func solution_zzimss() {
    readLine();print(readLine()!.map{Int("\($0)")!}.reduce(0,+))
  }
}

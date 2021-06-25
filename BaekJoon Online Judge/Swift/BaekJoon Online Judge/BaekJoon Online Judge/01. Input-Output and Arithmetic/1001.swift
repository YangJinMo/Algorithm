//
//  1001.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/09.
//

/**
 - 제목: A-B
 - 문제: 두 정수 A와 B를 입력받은 다음, A-B를 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 A와 B가 주어진다. (0 `<` A, B `<` 10)
 - 출력: 첫째 줄에 A-B를 출력한다.
 - 원문: https://www.acmicpc.net/problem/1001
 */

class Problem_1001 {
  func solution_1() {
    print((readLine()?.split(separator: " ").map{ Int($0)! }.reduce(0, { x, y in -x - y }))!)
  }
  /// https://www.acmicpc.net/short/status/1001/74/1
  /// 4등
  func solution_zzimss() {
    print(readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0){-$0-$1})
  }
}

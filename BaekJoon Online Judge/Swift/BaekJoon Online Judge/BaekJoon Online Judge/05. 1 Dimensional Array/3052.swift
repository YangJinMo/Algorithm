//
//  3052.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/12.
//

/**
 - 제목: 나머지
 - 문제: 두 자연수 A와 B가 있을 때, A%B는 A를 B로 나눈 나머지 이다. 예를 들어, 7, 14, 27, 38을 3으로 나눈 나머지는 1, 2, 0, 2이다.
       수 10개를 입력받은 뒤, 이를 42로 나눈 나머지를 구한다. 그 다음 서로 다른 값이 몇 개 있는지 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄부터 열번째 줄 까지 숫자가 한 줄에 하나씩 주어진다. 이 숫자는 1,000보다 작거나 같고, 음이 아닌 정수이다.
 - 출력: 첫째 줄에, 42로 나누었을 때, 서로 다른 나머지가 몇 개 있는지 출력한다.
 - 원문: https://www.acmicpc.net/problem/3052
 */

class Problem_3052 {
  func solution_1() {
    var intSet: Set<Int> = []
    
    while let line = readLine() {
      intSet.insert(Int(line)! % 42)
    }
    
    print(intSet.count)
  }
  func solution_2() {
    var a=Set<Int>();while let l=readLine(){a.insert(Int(l)!%42)};print(a.count)
  }
  func solution_3() {
    var a=[Int]();while let l=readLine(){a.insert(Int(l)!%42,at:0)};print(Set(a).count)
  }
  /// https://www.acmicpc.net/short/status/3052/74/1
  /// 2등 - 같은 코드
  func solution_zzimss() {
    print(Set((0...9).map{_ in Int(readLine()!)!%42}).count)
  }
}

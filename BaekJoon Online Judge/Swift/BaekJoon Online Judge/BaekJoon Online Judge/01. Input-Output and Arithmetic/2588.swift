//
//  2588.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/16.
//

/**
 - 제목: 곱셈
 - 문제: (세 자리 수) × (세 자리 수)는 다음과 같은 과정을 통하여 이루어진다.
       (1)과 (2)위치에 들어갈 세 자리 자연수가 주어질 때 (3), (4), (5), (6)위치에 들어갈 값을 구하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 (1)의 위치에 들어갈 세 자리 자연수가, 둘째 줄에 (2)의 위치에 들어갈 세자리 자연수가 주어진다.
 - 출력: 첫째 줄부터 넷째 줄까지 차례대로 (3), (4), (5), (6)에 들어갈 값을 출력한다.
 - 원문: https://www.acmicpc.net/problem/2588
 */

class Problem_2588 {
  func solution_1() {
    let a: Int = Int(readLine()!)!
    let b: Int = Int(readLine()!)!

    let A: Int = a * (b % 10)
    let B: Int = a * ((b % 100) / 10)
    let C: Int = a * (b / 100)
    let D: Int = a * b
    
    print(A)
    print(B)
    print(C)
    print(D)
  }
  func solution_2() {
    let a=Int(readLine()!)!,b=Int(readLine()!)!;print(a*(b%10));print(a*((b%100)/10));print(a*(b/100));print(a*b)
  }
  func solution_3() {
    let a=Int(readLine()!)!,b=Int(readLine()!)!;print("\(a*(b%10))\n\(a*((b%100)/10))\n\(a*(b/100))\n\(a*b)")
  }
  func solution_4() {
    let a=Int(readLine()!)!,j=Int(readLine()!)!;print("\(a*(j%10))\n\(a*(j/10%10))\n\(a*(j/100))\n\(a*j)")
  }
  func solution_5() {
    let a=Int(readLine()!)!,b=Int(readLine()!)!;print(a*(b%10),a*(b/10%10),a*(b/100),a*b,terminator:"\n")
  }
  /// https://www.acmicpc.net/short/status/2588/74/1
  /// 1등
  func solution_zzimss() {
    let a=Int(readLine()!)!,b=Int(readLine()!)!;print(a*(b%10),a*(b/10%10),a*(b/100),a*b,separator:"\n")
  }
}

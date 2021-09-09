//
//  11654.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/20.
//

/**
 - 제목: 아스키 코드
 - 문제: 알파벳 소문자, 대문자, 숫자 0-9중 하나가 주어졌을 때, 주어진 글자의 아스키 코드값을 출력하는 프로그램을 작성하시오.
 - 입력: 알파벳 소문자, 대문자, 숫자 0-9 중 하나가 첫째 줄에 주어진다.
 - 출력: 입력으로 주어진 글자의 아스키 코드 값을 출력한다.
 - 원문: https://www.acmicpc.net/problem/11654
 */

class Problem_11654 {
  func solution_1() {
    print(Character(readLine()!).asciiValue!)
  }
  /// https://www.acmicpc.net/short/status/11654/74/1
  /// 6등
  func solution_zzimss() {
    print(UnicodeScalar(readLine()!)!.value)
  }
}

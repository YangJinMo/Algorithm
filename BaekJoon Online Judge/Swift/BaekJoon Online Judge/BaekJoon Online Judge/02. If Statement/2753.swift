//
//  2753.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/21.
//

// 윤년 - https://www.acmicpc.net/problem/2753

class Problem_2753 {
  func solution_1() {
    /// 자연수
    let year: Int = Int(readLine()!)!
    /// 연도는 1보다 크거나 같고, 4000보다 작거나 같은 자연수
    if year >= 1 && year <= 4000 {
      /// 윤년은 연도가 4의 배수이면서, 100의 배수가 아닐 때 또는 400의 배수일 때
      if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 {
        print(1)
      } else {
        print(0)
      }
    } else {
      print("Year is a natural number greater than or equal to 1 and less than or equal to 4000.")
    }
  }
  func solution_2() {
    if let line: String = readLine() {
      /// 자연수
      if let year: Int = Int(line) {
        /// 연도는 1보다 크거나 같고, 4000보다 작거나 같은 자연수이다.
        if year >= 1 && year <= 4000 {
          /// 윤년은 연도가 4의 배수이면서, 100의 배수가 아닐 때 또는 400의 배수일 때
          if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 {
            print(1)
          } else {
            print(0)
          }
        } else {
          print("Year is a natural number greater than or equal to 1 and less than or equal to 4000.")
        }
      } else {
        print("Not a natural number.")
      }
    }
  }
}

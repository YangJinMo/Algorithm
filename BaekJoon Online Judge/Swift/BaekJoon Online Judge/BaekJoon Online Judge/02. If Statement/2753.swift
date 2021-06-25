//
//  2753.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/21.
//

/**
 - 제목: 윤년
 - 문제: 연도가 주어졌을 때, 윤년이면 1, 아니면 0을 출력하는 프로그램을 작성하시오.
       윤년은 연도가 4의 배수이면서, 100의 배수가 아닐 때 또는 400의 배수일 때이다.
       예를 들어, 2012년은 4의 배수이면서 100의 배수가 아니라서 윤년이다. 1900년은 100의 배수이고 400의 배수는 아니기 때문에 윤년이 아니다. 하지만, 2000년은 400의 배수이기 때문에 윤년이다.
 - 입력: 첫째 줄에 연도가 주어진다. 연도는 1보다 크거나 같고, 4000보다 작거나 같은 자연수이다.
 - 출력: 첫째 줄에 윤년이면 1, 아니면 0을 출력한다.
 - 원문: https://www.acmicpc.net/problem/2753
 */

class Problem_2753 {
  func solution_1() {
    let year: Int = Int(readLine()!)!
    if year >= 1 && year <= 4000 {
      if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
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
      if let year: Int = Int(line) {
        if year >= 1 && year <= 4000 {
          if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
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
  /// https://www.acmicpc.net/short/status/2753/74/1
  /// 2등
  func solution_zzimss() {
    let l=Int(readLine()!)!;print(l%4==0&&l%100 != 0||l%400==0 ?1:0)
  }
  func solution_wapas() {
    let l=Int(readLine()!)!;print(l%4==0 ?l%100==0 ?l%400==0 ?1:0:1:0)
  }
  func solution_buttercrab() {
    let l=Int(readLine()!)!;print(1>l%(l%25>0 ?4:16) ?1:0)
  }
}

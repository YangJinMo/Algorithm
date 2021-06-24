//
//  2739.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/24.
//

/**
 - 제목: 구구단
 - 문제: N을 입력받은 뒤, 구구단 N단을 출력하는 프로그램을 작성하시오. 출력 형식에 맞춰서 출력하면 된다.
 - 입력: 첫째 줄에 N이 주어진다. N은 1보다 크거나 같고, 9보다 작거나 같다.
 - 출력: 출력형식과 같게 N x 1부터 N x 9까지 출력한다.
 - 원문: https://www.acmicpc.net/problem/2739
 */

class Problem_2739 {
  func solution_1() {
    let n: Int = Int(readLine()!)!
    
    if n >= 1 && n <= 9 {
      for i in 1...9 {
        print("\(n) * \(i) = \(n * i)")
      }
    }
  }
  func solution_2() {
    let n: Int = Int(readLine()!)!
    
    if n >= 1 && n <= 9 {
      (1...9).forEach {
        print("\(n) * \($0) = \(n * $0)")
      }
    }
  }
  func solution_3() {
    let n: Int = Int(readLine()!)!
    
    if n >= 1 && n <= 9 {
      /// 단 한번의 print()문 호출
      print((1...9).map { "\(n) * \($0) = \(n * $0)" }.joined(separator: "\n"))
    }
  }
  func solution_4() {
    let n: Int = Int(readLine()!)!
    
    if n >= 1 && n <= 9 {
      
      var i = 1
      
      while i <= 9 {
        print("\(n) * \(i) = \(n * i)")
        i += 1
      }
    }
  }
  func solution_5() {
    let n: Int = Int(readLine()!)!
    
    if n >= 1 && n <= 9 {
      
      var i = 1
      
      repeat {
        print("\(n) * \(i) = \(n * i)")
        i += 1
      } while i <= 9
    }
  }
}

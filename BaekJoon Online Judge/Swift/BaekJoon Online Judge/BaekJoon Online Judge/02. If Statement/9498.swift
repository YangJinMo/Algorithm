//
//  9498.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/20.
//

// 시험 성적 - https://www.acmicpc.net/problem/9498

class Problem_9498 {
  func solution_1() {
    let testScore: Int = Int(readLine()!)!
    switch testScore {
    case 90...100:
      print("A")
    case 80...89:
      print("B")
    case 70...79:
      print("C")
    case 60...69:
      print("D")
    case 0...59:
      print("F")
    default:
      print("The test score is an integer greater than or equal to 0 and less than or equal to 100.")
    }
  }
}

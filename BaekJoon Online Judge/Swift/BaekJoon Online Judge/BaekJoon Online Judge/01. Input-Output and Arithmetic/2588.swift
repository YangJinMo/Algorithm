//
//  2588.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/16.
//

// 곱샘 - https://www.acmicpc.net/problem/10430

class Problem_2588 {
  func solution_1() {
    let firstNum: Int = Int(readLine()!)!
    let secondNum: Int = Int(readLine()!)!

    let A: Int = (firstNum * (secondNum % 10))
    let B: Int = (firstNum * ((secondNum % 100) / 10))
    let C: Int = (firstNum * (secondNum / 100))
    let D: Int = (firstNum * secondNum)
    print(A)
    print(B)
    print(C)
    print(D)
  }
}

//
//  10869.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/13.
//

import Foundation

// 사칙연산 - https://www.acmicpc.net/problem/10869

class Problem_10869 {
  func solution_1() {
    let line = readLine() ?? ""
    let lineArr = line.split(separator: " ")
    let a = Int(lineArr[0]) ?? 0
    let b = Int(lineArr[1]) ?? 0
    print(a+b)
    print(a-b)
    print(a*b)
    print(a/b)
    print(a%b)
  }
  func solution_2() {
    // 백준 제출 컴파일 에러
    let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    let a = arr[0]
    let b = arr[1]
    print(a+b)
    print(a-b)
    print(a*b)
    print(a/b)
    print(a%b)
  }
  func solution_3() {
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = arr[0]
    let b = arr[1]
    print(a+b)
    print(a-b)
    print(a*b)
    print(a/b)
    print(a%b)
  }
}

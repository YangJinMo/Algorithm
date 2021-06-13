//
//  10998.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/10.
//

import Foundation

// A×B - https://www.acmicpc.net/problem/10998

class Problem_10998 {
  func solution_1() {
    print((readLine()?.split(separator: " ").map{ Int($0)! }.reduce(1, *))!)
  }
  func solution_2() {
    print((readLine()?.split(separator: " ").map{ Int($0)! }.reduce(1){$0 * $1})!)
  }
}

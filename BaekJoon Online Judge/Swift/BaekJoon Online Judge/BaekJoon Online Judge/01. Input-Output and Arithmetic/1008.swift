//
//  1008.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/11.
//

import Foundation

class Problem_1008 {
  func solution_1() {
    print(1 / readLine()!.split(separator: " ").map{ Double($0)! }.reduce(1){ $1 / $0 })
  }
  func solution_2() {
    let arr = readLine()!.split(separator: " ").map{ Double($0)! }
    print(arr[0] / arr[1])
  }
  func solution_3() {
    let arr = readLine()!.components(separatedBy: " ").map{ Double($0)! }
    print(arr[0] / arr[1])
  }
}

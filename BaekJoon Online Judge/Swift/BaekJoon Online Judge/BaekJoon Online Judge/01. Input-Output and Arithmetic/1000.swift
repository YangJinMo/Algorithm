//
//  1000.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/07.
//

import Foundation

class Problem_1000 {
  func solution_1() {
    let line = readLine()!
    let lineArr = line.components(separatedBy: " ")
    print(Int(lineArr[0])! + Int(lineArr[1])!)
  }
  func solution_2() {
    let line = readLine()!
    let intArr = line.components(separatedBy: " ").map{ Int($0)! }
    print(intArr.reduce(0, +))
  }
  func solution_3() {
    print((readLine()?.split(separator: " ").map { Int($0)! }.reduce(0, +))!)
  }
}

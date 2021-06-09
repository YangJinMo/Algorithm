//
//  1001.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/09.
//

import Foundation

class Problem_1001 {
  func solution_1() {
    print((readLine()?.split(separator: " ").map{ Int($0)! }.reduce(0, { x, y in -x - y }))!)
  }
}

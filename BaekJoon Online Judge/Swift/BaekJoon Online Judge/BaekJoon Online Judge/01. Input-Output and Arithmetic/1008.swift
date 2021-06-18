//
//  1008.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/11.
//

// A/B - https://www.acmicpc.net/problem/1008

class Problem_1008 {
  func solution_1() {
    print(1 / readLine()!.split(separator: " ").map{ Double($0)! }.reduce(1){ $1 / $0 })
  }
  func solution_2() {
    /*
     import Foundation
     let arr: [Double] = readLine()!.components(separatedBy: " ").map{ Double($0)! }
     print(arr[0] / arr[1])
     */
    let arr: [Double] = readLine()!.split(separator: " ").map{ Double($0)! }
    print(arr[0] / arr[1])
  }
}

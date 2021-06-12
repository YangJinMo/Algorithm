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

// readline: https://developer.apple.com/documentation/swift/1641199-readline
// components: https://developer.apple.com/documentation/foundation/nsstring/1413214-components
// map: https://developer.apple.com/documentation/swift/array/3017522-map
// reduce: https://developer.apple.com/documentation/swift/array/2298686-reduce
// split: https://developer.apple.com/documentation/swift/string/2894564-split

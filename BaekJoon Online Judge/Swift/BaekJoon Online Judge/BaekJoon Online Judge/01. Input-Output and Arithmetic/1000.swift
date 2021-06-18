//
//  1000.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/07.
//

// A+B - https://www.acmicpc.net/problem/1000

class Problem_1000 {
  func solution_1() {
    /*
     import Foundation
     let line: String = readLine()!
     let lineArr: [String] = line.components(separatedBy: " ")
     print(Int(lineArr[0])! + Int(lineArr[1])!)
     */
    let line: String = readLine() ?? ""
    let lineArr: [String.SubSequence] = line.split(separator: " ")
    print(Int(lineArr[0])! + Int(lineArr[1])!)
  }
  func solution_2() {
    /*
     import Foundation
     let line: String = readLine()!
     let intArr: [Int] = line.components(separatedBy: " ").map{ Int($0)! }
     */
    let line: String = readLine() ?? ""
    let lineArr: [String.SubSequence] = line.split(separator: " ")
    let intArr: [Int] = lineArr.map { Int($0)! }
    print(intArr.reduce(0, +))
  }
  func solution_3() {
    print((readLine()?.split(separator: " ").map { Int($0)! }.reduce(0, +))!)
  }
  func solution_4() {
    print((readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +)))
  }
}

// import Foundation is required to use components.
// from readLine()!.components(separatedBy: " ")
// to readLine()?.split(separator: " ")

// readline: https://developer.apple.com/documentation/swift/1641199-readline
// components: https://developer.apple.com/documentation/foundation/nsstring/1413214-components
// map: https://developer.apple.com/documentation/swift/array/3017522-map
// reduce: https://developer.apple.com/documentation/swift/array/2298686-reduce
// split: https://developer.apple.com/documentation/swift/string/2894564-split

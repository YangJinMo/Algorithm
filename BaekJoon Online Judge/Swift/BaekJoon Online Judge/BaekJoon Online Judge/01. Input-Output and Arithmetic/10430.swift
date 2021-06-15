//
//  10430.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/15.
//

import Foundation

// 나머지 - https://www.acmicpc.net/problem/10430

class Problem_10430 {
  func solution_1() {
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = arr[0]
    let b = arr[1]
    let c = arr[2]
    print((a+b)%c)
    print(((a%c)+(b%c))%c)
    print((a*b)%c)
    print(((a%c)*(b%c))%c)
  }
}

//
//  14681.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/22.
//

// 사분면 고르기 - https://www.acmicpc.net/problem/14681

class Problem_14681 {
  func solution_1() {
    let x: Int = Int(readLine()!)!
    let y: Int = Int(readLine()!)!
    
    /// 첫 줄에는 정수 x가 주어진다. (−1000 ≤ x ≤ 1000; x ≠ 0) 다음 줄에는 정수 y가 주어진다. (−1000 ≤ y ≤ 1000; y ≠ 0)
    if x >= -1000 && x <= 1000 && x != 0 && y >= -1000 && y <= 1000 && y != 0 {
      /// x좌표와 y좌표가 모두 양수이므로 제1사분면
      if x > 0 && y > 0 {
        print(1)
      } else if x < 0 && y > 0 {
        print(2)
      } else if x < 0 && y < 0 {
        print(3)
      } else {
        print(4)
      }
    }
  }
  func solution_2() {
    let x: Int = Int(readLine()!)!
    let y: Int = Int(readLine()!)!
    
    /// 첫 줄에는 정수 x가 주어진다. (−1000 ≤ x ≤ 1000; x ≠ 0) 다음 줄에는 정수 y가 주어진다. (−1000 ≤ y ≤ 1000; y ≠ 0)
    if x >= -1000 && x <= 1000 && x != 0 && y >= -1000 && y <= 1000 && y != 0 {
      /// x좌표와 y좌표가 모두 양수이므로 제1사분면
      if y > 0 {
        if x > 0 {
          print(1)
        } else {
          print(2)
        }
      } else {
        if x > 0 {
          print(4)
        } else {
          print(3)
        }
      }
    }
  }
}

//
//  2884.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/23.
//

// 알람 시계 - https://www.acmicpc.net/problem/2884

class Problem_2884 {
  func solution_1() {
    /// 첫째 줄에 두 정수 H와 M이 주어진다. (0 ≤ H ≤ 23, 0 ≤ M ≤ 59) 그리고 이것은 현재 상근이가 설정한 놓은 알람 시간 H시 M분을 의미한다.
    /// 입력 시간은 24시간 표현을 사용한다. 24시간 표현에서 하루의 시작은 0:0(자정)이고, 끝은 23:59(다음날 자정 1분 전)이다. 시간을 나타낼 때, 불필요한 0은 사용하지 않는다.
    let lineArr: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
    var h: Int = lineArr[0]
    var m: Int = lineArr[1]
    
    if h >= 0 && h <= 23 && m >= 0 && m <= 59 {
      
      m = m - 45
      
      if m < 0 {
        h = h - 1
        m = m + 60
        
        if h < 0 {
          h = h + 24
        }
      }
      print(h, m)
    }
  }
}

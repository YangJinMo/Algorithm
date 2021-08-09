//
//  2869.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/08/09.
//

/**
 - 제목: 달팽이는 올라가고 싶다
 - 문제: 땅 위에 달팽이가 있다. 이 달팽이는 높이가 V미터인 나무 막대를 올라갈 것이다.
       달팽이는 낮에 A미터 올라갈 수 있다. 하지만, 밤에 잠을 자는 동안 B미터 미끄러진다. 또, 정상에 올라간 후에는 미끄러지지 않는다.
       달팽이가 나무 막대를 모두 올라가려면, 며칠이 걸리는지 구하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 세 정수 A, B, V가 공백으로 구분되어서 주어진다. (1 ≤ B `<` A ≤ V ≤ 1,000,000,000)
 - 출력: 첫째 줄에 달팽이가 나무 막대를 모두 올라가는데 며칠이 걸리는지 출력한다.
 - 원문: https://www.acmicpc.net/problem/2869
 */

import Foundation

class Problem_2869 {
  func solution_1() {
    /// 시간 초과
    let line = readLine()!.split{$0==" "}.map{Int($0)!}
    let a = line[0]
    let b = line[1]
    let v = line[2]
    var r = 0
    var i = 0
    
    while v >= r {
      i += 1
      r += a
      if v <= r {
        print(i)
        break
      }
      r -= b
    }
  }
  func solution_2() {
    /// 시간 초과
    let line = readLine()!.split{$0==" "}.map{Int($0)!}
    let a = line[0]
    let b = line[1]
    let v = line[2]
    var i = 0
    
    while true {
      i += 1
      if a*i-b*(i-1) >= v {
        print(i)
        break
      }
    }
  }
  func solution_3() {
    let line = readLine()!.split{$0==" "}.map{Int($0)!}
    let a = line[0]
    let b = line[1]
    let v = line[2]
    // a*i-b*(i-1) >= v
    // a*i-b*i+b >= v
    // (a-b)*i+b >= v
    // (a-b)*i >= v-b
    let x = (v-b)/(a-b)
    let y = (v-b)%(a-b) > 0 ? 1 : 0
    print(x+y)
  }
  func solution_4() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!},a=l[2]-l[1],b=l[0]-l[1];print((a%b>0 ?1:0)+a/b)
  }
  func solution_5() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!},a=l[2]-l[1],b=l[0]-l[1];print(a%b>0 ?a/b+1:a/b)
  }
  func solution_6() {
    // import Foundation
    let l = readLine()!.split{$0==" "}.map{Double($0)!}
    print(Int(ceil((l[2]-l[0])/(l[0]-l[1]))+1))
  }
  /// https://www.acmicpc.net/short/status/2869/74/1
  /// 2등 - 같은 코드
  func solution_zzimss() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!};print(1+(l[2]-l[1]-1)/(l[0]-l[1]))
  }
}

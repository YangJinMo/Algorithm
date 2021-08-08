//
//  1193.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/08/07.
//

/**
 - 제목: 분수찾기
 - 문제: 이와 같이 나열된 분수들을 1/1 -> 1/2 -> 2/1 -> 3/1 -> 2/2 -> … 과 같은 지그재그 순서로 차례대로 1번, 2번, 3번, 4번, 5번, … 분수라고 하자.
       X가 주어졌을 때, X번째 분수를 구하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 X(1 ≤ X ≤ 10,000,000)가 주어진다.
 - 출력: 첫째 줄에 분수를 출력한다.
 - 원문: https://www.acmicpc.net/problem/1193
 */

// 1/1 1

// 1/2 2
// 2/1 3

// 3/1 4
// 2/2 5
// 1/3 6

class Problem_1193 {
  func solution_1() {
    var x = Int(readLine()!)!
    var c = 1
    
    while true {
      x -= c
      if x <= 0 {
        break
      }
      c += 1
    }
    if c % 2 == 1 {
      print("\(-x+1)/\(x+c)")
    } else {
      print("\(x+c)/\(-x+1)")
    }
  }
  func solution_2() {
    let x = Int(readLine()!)!
    var c = 1
    
    while c*(c+1)/2 < x {c += 1}
    
    let a = x - c*(c-1)/2
    let b = c - a + 1
    
    if c % 2 == 0 {
      print("\(a)/\(b)")
    } else {
      print("\(b)/\(a)")
    }
  }
  /// https://www.acmicpc.net/short/status/1193/74/1
  /// 1등
  func solution_zzimss() {
    var x=Int(readLine()!)!,c=1;while true{x-=c;if x<=0{break};c+=1};print(c%2==1 ?"\(-x+1)/\(x+c)":"\(x+c)/\(-x+1)")
  }
}

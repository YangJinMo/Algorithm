//
//  10952.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/05.
//

/**
 - 제목: A+B - 5
 - 문제: 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
 - 입력: 입력은 여러 개의 테스트 케이스로 이루어져 있다.
       각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 `<` A, B `<` 10)
       입력의 마지막에는 0 두 개가 들어온다.
 - 출력: 각 테스트 케이스마다 A+B를 출력한다.
 - 원문: https://www.acmicpc.net/problem/10952
 */

class Problem_10952 {
  /// 숫자가 2개 이상이 들어와도 가능
  /// 0 입력 시 종료
  func solution_1() {
    while true {
      let l = readLine()!.split{$0==" "}.map{Int($0)!}
      
      if l.allSatisfy({ $0 == 0 }) {
        break
      } else {
        print(l.reduce(0,+))
      }
    }
  }
  func solution_2() {
    while true {
      let l = readLine()!.split{$0==" "}.map{Int($0)!}
      
      if l.filter({ $0 == 0 }).count == l.count {
        break
      } else {
        print(l.reduce(0,+))
      }
    }
  }
  /// 0 두 개 이상 입력 시 종료
  /// 0 한 개 입력 시 오류
  func solution_3() {
    while true {
      let l = readLine()!.split{$0==" "}.map{Int($0)!}
      
      if l[0] == 0 && l[1] == 0 {
        break
      } else {
        print(l[0] + l[1])
      }
    }
  }
  /// 입력의 합이 0 이면 종료
  func solution_4() {
    while true {
      let sum = readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0,+)
      
      if sum == 0 {
        break
      } else {
        print(sum)
      }
    }
  }
  func solution_0() {
    while true{let l=readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0,+);if l==0{break}else{print(l)}}
  }
  /// https://www.acmicpc.net/short/status/10952/74/1
  /// 1등
  func solution_zzimss() {
    while true{let l=readLine()!.split{$0==" "},a=Int(l[0])!+Int(l[1])!;if a==0{break}else{print(a)}}
  }
}

//
//  11022.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/30.
//

/**
 - 제목: A+B - 8
 - 문제: 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 테스트 케이스의 개수 T가 주어진다.
       각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 `<` A, B `<` 10)
 - 출력: 각 테스트 케이스마다 "Case #x: A + B = C" 형식으로 출력한다. x는 테스트 케이스 번호이고 1부터 시작하며, C는 A+B이다.
 - 원문: https://www.acmicpc.net/problem/11022
 */

class Problem_11022 {
  func solution_1() {
    for i in 1...Int(readLine()!)! {
      let lineArr = readLine()!.split{$0==" "}.map{Int($0)!}
      let a = lineArr[0]
      let b = lineArr[1]
      print("Case #\(i):",a,"+",b,"=",a+b)
    }
  }
  func solution_2() {
    for i in 1...Int(readLine()!)! {
      let l=readLine()!.split{$0==" "}.map{Int($0)!}
      print("Case #\(i):",l[0],"+",l[1],"=",l.reduce(0,+))
    }
  }
  func solution_3() {
    (1...Int(readLine()!)!).map {
      let l=readLine()!.split{$0==" "}.map{Int($0)!}
      print("Case #\($0):",l[0],"+",l[1],"=",l[0]+l[1])
    }
  }
  func solution_4() {
    (1...Int(readLine()!)!).map{let l=readLine()!.split{$0==" "}.map{Int($0)!};print("Case #\($0):",l[0],"+",l[1],"=",l.reduce(0,+))}
  }
  func solution_5() {
    (1...Int(readLine()!)!).map{let l=readLine()!.split{$0==" "}.map{Int($0)!};print("Case #\($0): \(l[0]) + \(l[1]) = \(l.reduce(0,+))")}
  }
  func solution_6() {
    (1...Int(readLine()!)!).map{let l=readLine()!.split{$0==" "}.map{Int($0)!},a=l[0],b=l[1];print("Case #\($0):",a,"+",b,"=",a+b)}
  }
  func solution_7() {
    for i in 1...Int(readLine()!)!{let l=readLine()!.split{$0==" "}.map{Int($0)!};print("Case #\(i):",l[0],"+",l[1],"=",l[0]+l[1])}
  }
  /// https://www.acmicpc.net/short/status/11022/74/1
  /// 1등
  func solution_zzimss() {
    (1...Int(readLine()!)!).map{let l=readLine()!.split{$0==" "}.map{Int($0)!};print("Case #\($0):",l[0],"+",l[1],"=",l[0]+l[1])}
  }
}

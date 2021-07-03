//
//  1001.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/09.
//

/**
 - 제목: A-B
 - 문제: 두 정수 A와 B를 입력받은 다음, A-B를 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 A와 B가 주어진다. (0 `<` A, B `<` 10)
 - 출력: 첫째 줄에 A-B를 출력한다.
 - 원문: https://www.acmicpc.net/problem/1001
 */

class Problem_1001 {
  func solution_1() {
    let lineArr = readLine()!.split{$0==" "}.map{Int($0)!}
    let a = lineArr[0]
    let b = lineArr[1]
    print(a-b)
  }
  func solution_2() {
    print(readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0, { x, y in -x - y }))
  }
  func solution_3() {
    print(readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0){-$0-$1})
  }
  func solution_4() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!};print(l[0]-l[1])
  }
  /// https://www.acmicpc.net/short/status/1001/74/1
  /// 1등
  func solution_zzimss() {
    let l=readLine()!.split{$0==" "};print(Int(l[0])!-Int(l[1])!)
  }
}

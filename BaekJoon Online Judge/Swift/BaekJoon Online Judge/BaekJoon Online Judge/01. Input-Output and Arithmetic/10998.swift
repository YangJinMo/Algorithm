//
//  10998.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/10.
//

/**
 - 제목: A×B
 - 문제: 두 정수 A와 B를 입력받은 다음, A×B를 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 A와 B가 주어진다. (0 `<` A, B `<` 10)
 - 출력: 첫째 줄에 A×B를 출력한다.
 - 원문: https://www.acmicpc.net/problem/10998
 */

class Problem_10998 {
  func solution_1() {
    print(readLine()!.split(separator: " ").map{ Int($0)! }.reduce(1, *))
  }
  func solution_2() {
    print(readLine()!.split(separator: " ").map{ Int($0)! }.reduce(1){ $0 * $1 })
  }
  func solution_3() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!};print(l[0]*l[1])
  }
  func solution_4() {
    let l=readLine()!.split{$0==" "};print(Int(l[0])!*Int(l[1])!)
  }
  func solution_5() {
    let product: Int = readLine()!
      .split{$0==" "}
      .map{Int($0)!}
      .reduce(1, { (result: Int, element: Int) -> Int in
        // 1 * 3 = 3
        // 3 * 4 = 12
        return result * element
      })
    print(product)
  }
  /// https://www.acmicpc.net/short/status/10998/74/1
  /// 2등 - 같은 코드
  func solution_zzimss() {
    print(readLine()!.split{$0==" "}.map{Int($0)!}.reduce(1,*))
  }
}

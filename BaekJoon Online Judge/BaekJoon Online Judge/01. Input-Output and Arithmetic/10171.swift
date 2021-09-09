//
//  10171.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/07.
//

/**
 - 제목: 고양이
 - 문제: 아래 예제와 같이 고양이를 출력하시오.
 - 입력: 없음.
 - 출력: 고양이를 출력한다.
 - 원문: https://www.acmicpc.net/problem/10171
 */

class Problem_10171 {
  func solution_1() {
    print("\\    /\\")
    print(" )  ( ')")
    print("(  /  )")
    print(" \\(__)|")
  }
  func solution_2() {
    print("\\    /\\");print(" )  ( ')");print("(  /  )");print(" \\(__)|")
  }
  func solution_3() {
    print("\\    /\\"," )  ( ')","(  /  )"," \\(__)|",separator:"\n")
  }
  func solution_4() {
    print(#"""
    \    /\
     )  ( ')
    (  /  )
     \(__)|
    """#) // 69
  }
  func solution_5() {
    print(["\\    /\\"," )  ( ')","(  /  )"," \\(__)|"].reduce(""){ $0 + "\n" + $1 }) // -> solution_6
  }
  func solution_6() {
    ["\\    /\\"," )  ( ')","(  /  )"," \\(__)|"].map{print($0)}
  }
  /// https://www.acmicpc.net/short/status/10171/74/1
  /// 32등
  func solution_zzimss() {
    print("\\    /\\\n )  ( ')\n(  /  )\n \\(__)|") // 47
  }
}

//
//  10172.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/07.
//

/**
 - 제목: 개
 - 문제: 아래 예제와 같이 개를 출력하시오.
 - 입력: 없음.
 - 출력: 개를 출력한다.
 - 원문: https://www.acmicpc.net/problem/10172
 */

class Problem_10172 {
  func solution_1() {
    print("|\\_/|")
    print("|q p|   /}")
    print("( 0 )\"\"\"\\")
    print("|\"^\"`    |")
    print("||_/=\\\\__|")
  }
  func solution_2() {
    print(#"|\_/|\#n|q p|   /}\#n( 0 )"""\\#n|"^"`    |\#n||_/=\\__|"#) // 67
  }
  func solution_3() {
    print("|\\_/|","|q p|   /}","( 0 )\"\"\"\\","|\"^\"`    |","||_/=\\\\__|",separator:"\n")
  }
  func solution_4() {
    ["|\\_/|","|q p|   /}","( 0 )\"\"\"\\","|\"^\"`    |","||_/=\\\\__|"].map{print($0)}
  }
  /// https://www.acmicpc.net/short/status/10172/74/1
  /// 7등
  func solution_zzimss() {
    print(#"""
    |\_/|
    |q p|   /}
    ( 0 )"""\
    |"^"`    |
    ||_/=\\__|
    """#) // 65
  }
}

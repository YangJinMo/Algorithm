//
//  10951.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/06.
//

/**
 - 제목: A+B - 4
 - 문제: 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
 - 입력: 입력은 여러 개의 테스트 케이스로 이루어져 있다.
       각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 `<` A, B `<` 10)
 - 출력: 각 테스트 케이스마다 A+B를 출력한다.
 - 원문: https://www.acmicpc.net/problem/10951
 */

class Problem_10951 {
  /**
   EOF(End of file)를 아는지에 대해서 묻는 문제이다.
   무한루프가 돌 때 어떻게 빠져나올지 묻는 문제이기도 하다.

   의외로 간단하게 readLine() 자체를 true인지 false 인지 판단하면 됐다.
   텍스트 파일의 끝임을 알리는 문자값
   control + D 하면 EOF가 send된다.
   */
  func solution_1() {
    while let l = readLine() {
      print(l.split{$0==" "}.map{Int($0)!}.reduce(0,+))
    }
  }
  func solution_2() {
    while let l=readLine(){let a=l.split{$0==" "};print(Int(a[0])!+Int(a[1])!)}
  }
  /// https://www.acmicpc.net/short/status/10951/74/1
  /// 3등
  func solution_zzimss() {
    while let l=readLine(){print(l.split{$0==" "}.map{Int($0)!}.reduce(0,+))}
  }
}

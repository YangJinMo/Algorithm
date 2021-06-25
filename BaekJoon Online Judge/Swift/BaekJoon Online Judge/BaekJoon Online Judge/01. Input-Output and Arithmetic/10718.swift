//
//  10718.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/07.
//

/**
 - 제목: We love kriii
 - 문제: ACM-ICPC 인터넷 예선, Regional, 그리고 World Finals까지 이미 2회씩 진출해버린 kriii는 미련을 버리지 못하고 왠지 모르게 올해에도 파주 World Finals 준비 캠프에 참여했다.
       대회를 뜰 줄 모르는 지박령 kriii를 위해서 격려의 문구를 출력해주자.
 - 입력: 본 문제는 입력이 없다.
 - 출력: 두 줄에 걸쳐 "강한친구 대한육군"을 한 줄에 한 번씩 출력한다.
 - 원문: https://www.acmicpc.net/problem/10718
 */

class Problem_10718 {
  func solution_1() {
    print("강한친구 대한육군")
    print("강한친구 대한육군")
  }
  func solution_2() {
    print("강한친구 대한육군\n강한친구 대한육군")
  }
  func solution_3() {
    (0...1).forEach{$0;print("강한친구 대한육군")}
  }
  func solution_4() {
    (0...1).forEach{$0;print("강한친구 대한육군")}
  }
  func solution_5() {
    (0...1).map{$0;print("강한친구 대한육군")}
  }
  /// https://www.acmicpc.net/short/status/10718/74/1
  /// 1등
  func solution_zzimss() {
    for _ in 0...1{print("강한친구 대한육군")}
  }
}

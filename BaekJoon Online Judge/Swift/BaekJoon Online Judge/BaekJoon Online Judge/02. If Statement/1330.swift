//
//  1330.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/18.
//

/**
 - 제목: 두 수 비교하기
 - 문제: 두 정수 A와 B가 주어졌을 때, A와 B를 비교하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 A와 B가 주어진다. A와 B는 공백 한 칸으로 구분되어져 있다.
 - 출력: 첫째 줄에 다음 세 가지 중 하나를 출력한다.
   - A가 B보다 큰 경우에는 `>`를 출력한다.
   - A가 B보다 작은 경우에는 `<`를 출력한다.
   - A와 B가 같은 경우에는 `==`를 출력한다.
 - 원문: https://www.acmicpc.net/problem/1330
 */

class Problem_1330 {
  func solution_1() {
    let lineArr: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
    let a: Int = lineArr[0]
    let b: Int = lineArr[1]
    
    if a > b {
      print(">")
    } else if a < b {
      print("<")
    } else {
      print("==")
    }
  }
  func solution_2() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!};let(a,b)=(l[0],l[1]);if a>b{print(">")}else if a<b{print("<")}else{print("==")}
  }
  func solution_3() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!};let(a,b)=(l[0],l[1]);print(a>b ?">":a<b ?"<":"==")
  }
  func solution_4() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!},a=l[0],b=l[1];print(a>b ?">":a<b ?"<":"==")
  }
  /// https://www.acmicpc.net/short/status/1330/74/1
  /// 2등
  func solution_zzimss() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!},b=l[0]-l[1];print(b>0 ?">":b<0 ?"<":"==")
  }
  func solution_wapas() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!};print(l[0]>l[1] ?">":l[0]<l[1] ?"<":"==")
  }
}

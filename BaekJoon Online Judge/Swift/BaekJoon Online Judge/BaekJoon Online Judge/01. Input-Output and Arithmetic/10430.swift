//
//  10430.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/15.
//

/**
 - 제목: 나머지
 - 문제: (A+B)%C는 ((A%C) + (B%C))%C 와 같을까?
       (A×B)%C는 ((A%C) × (B%C))%C 와 같을까?
       세 수 A, B, C가 주어졌을 때, 위의 네 가지 값을 구하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 A, B, C가 순서대로 주어진다. (2 ≤ A, B, C ≤ 10000)
 - 출력: 첫째 줄에 (A+B)%C, 둘째 줄에 ((A%C) + (B%C))%C, 셋째 줄에 (A×B)%C, 넷째 줄에 ((A%C) × (B%C))%C를 출력한다.
 - 원문: https://www.acmicpc.net/problem/10430
 */

class Problem_10430 {
  func solution_1() {
    let lineArr: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
    let a: Int = lineArr[0]
    let b: Int = lineArr[1]
    let c: Int = lineArr[2]
    print((a + b) % c)
    print(((a % c) + (b % c)) % c)
    print((a * b) % c)
    print(((a % c) * (b % c)) % c)
  }
  func solution_2() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!};let(a,b,c)=(l[0],l[1],l[2]);print((a+b)%c,((a%c)+(b%c))%c,(a*b)%c,((a%c)*(b%c))%c,separator:"\n")
  }
  func solution_3() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!},(a,b,c)=(l[0],l[1],l[2]);print((a+b)%c,((a%c)+(b%c))%c,(a*b)%c,((a%c)*(b%c))%c,separator:"\n")
  }
  func solution_4() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!},a=l[0],b=l[1],c=l[2];print((a+b)%c,((a%c)+(b%c))%c,(a*b)%c,((a%c)*(b%c))%c,separator:"\n")
  }
  func solution_5() {
    let l=readLine()!.split{$0==" "},a=Int(l[0])!,b=Int(l[1])!,c=Int(l[2])!;[(a+b)%c,((a%c)+(b%c))%c,(a*b)%c,((a%c)*(b%c))%c].map{print($0)}
  }
  /// https://www.acmicpc.net/short/status/10430/74/1
  /// 1등
  func solution_zzimss() {
    let l=readLine()!.split{$0==" "}.map{Int($0)!},a=l[0],b=l[1],c=l[2];[(a+b)%c,((a%c)+(b%c))%c,(a*b)%c,((a%c)*(b%c))%c].map{print($0)}
  }
}

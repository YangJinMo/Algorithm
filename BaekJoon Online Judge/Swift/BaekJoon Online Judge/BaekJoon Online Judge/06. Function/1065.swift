//
//  1065.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/19.
//

/**
 - 제목: 한수
 - 문제: 어떤 양의 정수 X의 각 자리가 등차수열을 이룬다면, 그 수를 한수라고 한다. 등차수열은 연속된 두 개의 수의 차이가 일정한 수열을 말한다.
       N이 주어졌을 때, 1보다 크거나 같고, N보다 작거나 같은 한수의 개수를 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 1,000보다 작거나 같은 자연수 N이 주어진다.
 - 출력: 첫째 줄에 1보다 크거나 같고, N보다 작거나 같은 한수의 개수를 출력한다.
 - 원문: https://www.acmicpc.net/problem/1065
 */

// 1 1
// 2 1
// 10 1
// 11 1
// 110 99
// 210 105
// 1000 144

// 11: 차이 0
// 12: 차이 1
// 13: 차이 2
// ...
// 19: 차이 8

// 111: 차이 0
// 123: 차이 1
// 135
// 147
// 159: 차이 4
// 백의 자리부터 등차의 의미가 있음, 이전은 모두가 한수
// 백의 자리마다 5개씩

// 1. 반복문, 일의 자리 - 십의 자리 == 십의 자리 - 백의자리, 차이가 같을 때 => 한수인지 확인하기, 한수면 1 증가, 증가값 출력
// 2. 일의 자리 - 십의 자리만큼 빼서 백의 자리에 채우기, n보다 작거나 같은 한수까지만 => 한수 만들기

class Problem_1065 {
  func solution_1() {
    var count: Int = 0
    
    for i in 1...Int(readLine()!)! {
      if i >= 1000 {
        break
      } else if i >= 100 {
        let units = i % 10
        let tens = i / 10 % 10
        let hundreds = i / 10 / 10 % 10
        
        if units - tens == tens - hundreds {
          count += 1
        }
      } else {
        count += 1
      }
    }
    print(count)
  }
  func solution_2() {
    var count: Int = 0
    
    for i in 1...Int(readLine()!)! {
      if i >= 100 {
        var r = i
        var a: [Int] = []
        
        while r != 0 {
          a.insert(r % 10, at: 0)
          r /= 10
        }
        
        if a[2] - a[1] == a[1] - a[0] {
          count += 1
        }
      } else {
        count += 1
      }
    }
    print(count)
  }
  func solution_3() {
    var count: Int = 0
    
    for i in 1...Int(readLine()!)! {
      if i >= 100 {
        var r = i
        var a: [Int] = []
        
        while r != 0 {
          a.insert(r % 10, at: 0)
          r /= 10
        }
        
        if a[2] + a[0] == 2 * a[1] {
          count += 1
        }
      } else {
        count += 1
      }
    }
    print(count)
  }
  func solution_4() {
    var count: Int = 0
    
    for i in 1...Int(readLine()!)! {
      if i >= 100 {
        let a: [Int] = String(i).map{Int(String($0))!}
        
        if a[2] + a[0] == 2 * a[1] {
          count += 1
        }
      } else {
        count += 1
      }
    }
    print(count)
  }
  func solution_5() {
    var c=0;for i in 1...Int(readLine()!)!{if i>99{var r=i,a:[Int]=[];while r>0{a.insert(r%10,at:0);r/=10};if a[2]+a[0]==2*a[1]{c+=1}}else{c+=1}};print(c)
  }
  func solution_6() {
    var c=0;for i in 1...Int(readLine()!)!{if i>99{let a=String(i).map{Int(String($0))!};if a[2]+a[0]==2*a[1]{c+=1}}else{c+=1}};print(c)
  }
  func solution_7() {
    var c=0;for i in 1...Int(readLine()!)!{if i>99{let a=String(i).map{Int("\($0)")!};if a[2]+a[0]==2*a[1]{c+=1}}else{c+=1}};print(c)
  }
  func solution_8() {
    var c=0;for i in 1...Int(readLine()!)!{if i>99{let a=String(i).map{Int("\($0)")!};if a.reduce(0,+)==3*a[1]{c+=1}}else{c+=1}};print(c)
  }
  func solution_9() {
    var n=Int(readLine()!)!,c=99;if n>c{for i in 100...n{if i/100+i%10==i/10%10*2{c+=1}}}else{c=n};print(c)
  }
  func solution_10() {
    let n=Int(readLine()!)!;if n>=100{var c=99+(n/100-1)*5;for i in (n/100)*100...n{if i/100+i%10==i/10%10*2{c+=1}};print(c)}else{print(n)}
  }
  func solution_11() {
    var c=0;for i in 1...Int(readLine()!)!{if i<100{c+=1;continue};if i/100+i%10==i/10%10*2{c+=1}};print(c)
  }
  func solution_12() {
    var c=0;for i in 1...Int(readLine()!)!{if i<100{c+=1}else if i/100+i%10==i/10%10*2{c+=1}};print(c)
  }
  /// https://www.acmicpc.net/short/status/1065/74/1
  /// 1등
  func solution_zzimss() {
    var c=0;for i in 1...Int(readLine()!)!{if i<100||i/100+i%10==i/10%10*2{c+=1}};print(c)
  }
}

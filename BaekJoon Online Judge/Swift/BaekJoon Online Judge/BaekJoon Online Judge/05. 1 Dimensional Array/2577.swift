//
//  2577.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/10.
//

/**
 - 제목: 숫자의 개수
 - 문제: 세 개의 자연수 A, B, C가 주어질 때 A × B × C를 계산한 결과에 0부터 9까지 각각의 숫자가 몇 번씩 쓰였는지를 구하는 프로그램을 작성하시오.
       예를 들어 A = 150, B = 266, C = 427 이라면 A × B × C = 150 × 266 × 427 = 17037300 이 되고, 계산한 결과 17037300 에는 0이 3번, 1이 1번, 3이 2번, 7이 2번 쓰였다.
 - 입력: 첫째 줄에 A, 둘째 줄에 B, 셋째 줄에 C가 주어진다. A, B, C는 모두 100보다 크거나 같고, 1,000보다 작은 자연수이다.
 - 출력: 첫째 줄에는 A × B × C의 결과에 0 이 몇 번 쓰였는지 출력한다. 마찬가지로 둘째 줄부터 열 번째 줄까지 A × B × C의 결과에 1부터 9까지의 숫자가 각각 몇 번 쓰였는지 차례로 한 줄에 하나씩 출력한다.
 - 원문: https://www.acmicpc.net/problem/2577
 */

class Problem_2577 {
  func solution_1() {
    var intArr: [Int] = []
    
    while let line = readLine() {
      intArr.append(Int(line)!)
    }
    
    var product: Int = intArr.reduce(1, *)
    
    intArr = []
    
    while product > 0 {
      intArr.insert(product % 10, at: 0)
      product = product / 10
    }
    
    //print(intArr) // [1, 7, 0, 3, 7, 3, 0, 0]
    
    for i in 0...9 {
      print(intArr.filter{ $0 == i }.count)
    }
  }
  func solution_2() {
    var product: Int = 1
    
    while let line = readLine() {
      product *= Int(line)!
    }
    
    var intArr: [Int] = []
    
    while product > 0 {
      intArr.insert(product % 10, at: 0)
      product = product / 10
    }
    
    for i in 0...9 {
      print(intArr.filter{ $0 == i }.count)
    }
  }
  func solution_3() {
    var product: Int = 1
    
    while let line = readLine() {
      product *= Int(line)!
    }
    
    var intArr: [Int] = Array(repeating: 0, count: 10)
    
    for element in String(product) {
      intArr[Int(String(element))!] += 1
    }
    
    for i in intArr {
      print(i)
    }
  }
  func solution_4() {
    let x = String(Int(readLine()!)! * Int(readLine()!)! * Int(readLine()!)!)
    for i in 0...9 {
      print(x.filter{$0 == Character(String(i))}.count)
    }
  }
  func solution_5() {
    var p=1,a=[Int]();while let l=readLine(){p*=Int(l)!};while p>0{a.insert(p%10,at:0);p/=10};for i in 0...9{print(a.filter{$0==i}.count)}
  }
  func solution_6() {
    var a=[0,0,0,0,0,0,0,0,0,0];String([1,2,3].map{_ in Int(readLine()!)!}.reduce(1,*)).map{a[Int(String($0))!]+=1};a.map{print($0)}
  }
  func solution_7() {
    var a=[0,0,0,0,0,0,0,0,0,0],p=1;while let l=readLine(){p*=Int(l)!};String(p).map{a[Int(String($0))!]+=1};a.map{print($0)}
  }
  func solution_8() {
    let x=String([1,2,3].map{_ in Int(readLine()!)!}.reduce(1,*));for i in 0...9{print(x.filter{$0==Character(String(i))}.count)}
  }
  func solution_9() {
    var a=[0,0,0,0,0,0,0,0,0,0],d=1;for _ in 0..<3{d*=Int(readLine()!)!};for i in String(d){a[Int("\(i)")!]+=1};a.map{print($0)}
  }
  /// https://www.acmicpc.net/short/status/2577/74/1
  /// 1등
  func solution_zzimss() {
    var a=[0,0,0,0,0,0,0,0,0,0],p=1;while let l=readLine(){p*=Int(l)!};String(p).map{a[Int("\($0)")!]+=1};a.map{print($0)}
  }
}

func intToArr(_ num: Int) -> [Int] {
  var intArr: [Int] = []
  var number: Int = num
  
  while number > 0 {
    intArr.insert(number % 10, at: 0)
    number = number / 10
  }
  return intArr
}
func digits(_ number: Int) -> [Int] {
  if number >= 10 {
    let firstDigits = digits(number / 10)
    let lastDigit = number % 10
    return firstDigits + [lastDigit]
  } else {
    return [number]
  }
}

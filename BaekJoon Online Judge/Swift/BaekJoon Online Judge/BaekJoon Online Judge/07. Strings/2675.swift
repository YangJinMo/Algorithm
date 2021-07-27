//
//  2675.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/26.
//

/**
 - 제목: 문자열 반복
 - 문제: 문자열 S를 입력받은 후에, 각 문자를 R번 반복해 새 문자열 P를 만든 후 출력하는 프로그램을 작성하시오.
       즉, 첫 번째 문자를 R번 반복하고, 두 번째 문자를 R번 반복하는 식으로 P를 만들면 된다.
       S에는 QR Code "alphanumeric" 문자만 들어있다. QR Code "alphanumeric" 문자는 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\$%*+-./: 이다.
 - 입력: 첫째 줄에 테스트 케이스의 개수 T(1 ≤ T ≤ 1,000)가 주어진다. 각 테스트 케이스는 반복 횟수 R(1 ≤ R ≤ 8), 문자열 S가 공백으로 구분되어 주어진다. S의 길이는 적어도 1이며, 20글자를 넘지 않는다.
 - 출력: 각 테스트 케이스에 대해 P를 출력한다.
 - 원문: https://www.acmicpc.net/problem/2675
 */

class Problem_2675 {
  func solution_1() {
    let T: Int = Int(readLine()!)!
    
    if T >= 1 && T <= 1000 {
      for _ in 1...T {
        let arr = readLine()!.split{$0==" "}
        
        if let first = arr.first {
          if let R = Int(first) {
            if let last = arr.last {
              let S = String(last)
              
              if S.count >= 1 && S.count <= 20 {
                for s in S {
                  for _ in 1...R {
                    print(s, terminator: "")
                  }
                }
                print()
              } else {
                print("The length of S must be at least 1 and not exceed 20 characters.")
              }
            } else {
              print("last value does not exist")
            }
          } else {
            print("Failed to cast first value Int")
          }
        } else {
          print("first value does not exist")
        }
      }
    } else {
      print("T is greater than or equal to 1 and less than or equal to 1000")
    }
  }
  func solution_2() {
    let T: Int = Int(readLine()!)!
    
    for _ in 1...T {
      let arr = readLine()!.split{$0==" "}
      let R = Int(arr.first!)!
      let S = String(arr.last!)
      
      for s in S {
        for _ in 1...R {
          print(s, terminator: "")
        }
      }
      print()
    }
  }
  func solution_3() {
    for _ in 1...Int(readLine()!)! {
      let a = readLine()!.split{$0==" "}
      for s in String(a[1]) {
        for _ in 1...Int(a[0])!{
          print(s, terminator: "")
        }
      }
      print()
    }
  }
  func solution_4() {
    for _ in 1...Int(readLine()!)!{
      let r = readLine()!.split { $0 == " " }.map { String($0) }
      print(r[1].map { String(repeating: $0, count: Int(r[0])!) }.reduce("",+))
    }
  }
  func solution_5() {
    for _ in 1...Int(readLine()!)!{let r=readLine()!.split{$0==" "}.map{String($0)};print(r[1].map{String(repeating:$0,count:Int(r[0])!)}.reduce("",+))}
  }
  func solution_6() {
    for _ in 0..<Int(readLine()!)! {
      let arr = readLine()!.split{$0==" "}
      var result = ""
      for char in arr[1] {
        result += addStr(Int(arr[0])!, String(char))
      }
      print(result)
    }
  }
  func addStr(_ count: Int, _ string: String) -> String {
    var result = ""
    
    for _ in 0..<count {
      result += string
    }
    return result
  }
  func solution_7() {
    for _ in 1...Int(readLine()!)!{let a=readLine()!.split{$0==" "};for s in a[1]{for _ in 1...Int(a[0])!{print(s,terminator:"")}};print()}
  }
  /// https://www.acmicpc.net/short/status/2675/74/1
  /// 1등
  func solution_zzimss() {
    for _ in 1...Int(readLine()!)!{let a=readLine()!.split{$0==" "};a[1].map{for _ in 1...Int(a[0])!{print($0,terminator:"")}};print()}
  }
}

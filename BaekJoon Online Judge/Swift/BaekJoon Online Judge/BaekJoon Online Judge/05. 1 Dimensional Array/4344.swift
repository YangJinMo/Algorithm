//
//  4344.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/15.
//

/**
 - 제목: 평균은 넘겠지
 - 문제: 대학생 새내기들의 90%는 자신이 반에서 평균은 넘는다고 생각한다. 당신은 그들에게 슬픈 진실을 알려줘야 한다.
 - 입력: 첫째 줄에는 테스트 케이스의 개수 C가 주어진다.
       둘째 줄부터 각 테스트 케이스마다 학생의 수 N(1 ≤ N ≤ 1000, N은 정수)이 첫 수로 주어지고, 이어서 N명의 점수가 주어진다. 점수는 0보다 크거나 같고, 100보다 작거나 같은 정수이다.
 - 출력: 각 케이스마다 한 줄씩 평균을 넘는 학생들의 비율을 반올림하여 소수점 셋째 자리까지 출력한다.
 - 원문: https://www.acmicpc.net/problem/4344
 */

import Foundation /// round , String(format:

class Problem_4344 {
  func solution_1() {
    let c: Int = Int(readLine()!)!
    
    for _ in 1...c {
      let s: [Int] = readLine()!.split { $0 == " " }.map { Int($0)! }
      
      if let numberOfStudents: Int = s.first {
        var scores: [Int] = []
        
        for i in 1...numberOfStudents {
          scores.append(s[i])
        }
        let avg: Int = scores.reduce(0, +) / numberOfStudents
        let aboveAverageScore: [Int] = scores.filter { $0 > avg }
        let rate: Double = Double(aboveAverageScore.count) / Double(numberOfStudents) * 100
        print(String(format: "%.3f", rate)+"%")
      }
    }
  }
  func solution_2() {
    for _ in 1...Int(readLine()!)! {
      let s: [Int] = readLine()!.split { $0 == " " }.map { Int($0)! }
      
      if let numberOfStudents: Int = s.first {
        var scores: [Int] = []
        
        for i in 1...numberOfStudents {
          scores.append(s[i])
        }
        let avg: Int = scores.reduce(0, +) / numberOfStudents
        let aboveAverageScoresCount: Int = scores.filter { $0 > avg }.count
        let rate: Double = round(Double(aboveAverageScoresCount) / Double(numberOfStudents) * 100 * 1000) / 1000
        print("\(rate)%") // 첫 번째의 경우 소수점 자리가 생략되어 나와 정답이 아님 (40.000% -> 40.0%)
      }
    }
  }
  func solution_3() {
    for _ in 1...Int(readLine()!)!{var s=readLine()!.split{$0==" "}.map{Int($0)!},a:[Int]=[],n=s.first!;for i in 1...n{a.append(s[i])};print(String(format:"%.3f",Double(a.filter{$0>a.reduce(0,+)/n}.count)/Double(n)*100)+"%")}
  }
  func solution_4() {
    /// 컴파일 결과는 맞음, 백준에서는 틀림, 이유 모름
    for _ in 1...Int(readLine()!)!{let s=readLine()!.split{$0==" "}.map{Int($0)!},n=s[0];print(String(format:"%.3f%%",Float(s.filter{$0>(s.reduce(0,+)-n)/n}.count)/Float(n)*100))}
  }
  func solution_5() {
    /// 컴파일 결과는 맞음, 백준에서는 틀림, 이유 모름
    for _ in 1...Int(readLine()!)!{let s=readLine()!.split{$0==" "}.map{Int($0)!},n=s[0],r=s.reduce(0,+)-n;print(String(format:"%.3f%%",Float(s.filter{$0>r/n}.count)/Float(n)*100))}
  }
  func solution_6() {
    /// 컴파일 결과는 맞음, 백준에서는 틀림, 이유 모름
    for _ in 1...Int(readLine()!)!{let s=readLine()!.split{$0==" "}.map{Int($0)!},n=s[0];print(String(format:"%.3f%%",Float(s.filter{$0>s.reduce(-n,+)/n}.count)/Float(n)*100))}
  }
  func solution_7() {
    for _ in 1...Int(readLine()!)!{var s=readLine()!.split{$0==" "}.map{Double(String($0))!},n=s.removeFirst();print(String(format:"%.3f%%",Double(s.filter{$0>s.reduce(0,+)/n}.count)/Double(n)*100))}
  }
  func solution_8() {
    for _ in 1...Int(readLine()!)!{var s=readLine()!.split{$0==" "}.map{Float("\($0)")!},n=s.remove(at:0);print(String(format:"%.3f%%",Float(s.filter{$0>s.reduce(0,+)/n}.count)/Float(n)*100))}
  }
  func solution_9() {
    for _ in 1...Int(readLine()!)!{let s=readLine()!.split{$0==" "}.map{Float("\($0)")!},n=s[0],d=s.dropFirst();print(String(format:"%.3f%%",Float(d.filter{$0>d.reduce(0,+)/n}.count)/Float(n)*100))}
    // print(s.dropFirst())
    // [50.0, 50.0, 70.0, 80.0, 100.0] ...
  }
  func solution_10() {
    for _ in 1...Int(readLine()!)!{let s=readLine()!.split{$0==" "}.map{Int($0)!},a=s[1...s[0]];print(String(format:"%.3f%%",Float(a.filter{$0>a.reduce(0,+)/s[0]}.count)/Float(s[0])*100))}
  }
  /// https://www.acmicpc.net/short/status/4344/74/1
  /// 1등
  func solution_zzimss() {
    for _ in 1...Int(readLine()!)!{let s=readLine()!.split{$0==" "}.map{Int($0)!},n=s[0],a=s[1...n];print(String(format:"%.3f%%",Float(a.filter{$0>a.reduce(0,+)/n}.count)/Float(n)*100))}
  }
}

// Swift String Format Specifiers
// https://stackoverflow.com/questions/52332747/what-are-the-supported-swift-string-format-specifiers/52332748

// mutating func removeFirst(_ k: Int)
// https://developer.apple.com/documentation/swift/array/2886730-removefirst

// func dropFirst(_ k: Int = 1) -> ArraySlice<Element>
// https://developer.apple.com/documentation/swift/array/1688675-dropfirst

// typealias SubSequence = ArraySlice<Element>
// https://developer.apple.com/documentation/swift/array/subsequence

/**
 스위프트에서 배열은 구조체로 선언되어 있습니다.
 구조체 내부에서 데이터 수정이 필요한 removeFirst는 mutating키워드가 붙었고
 그럴 필요가 없는 dropFirst는 mutating키워드가 붙어있지 않는 대신에 subsequence를 리턴해줍니다.
 
 또 dropFirst는 k의 디폴트 값이 1인 이유는 빈 배열에 dropFirst메서드를 호출해도 빈 subsequence를 리턴해줍니다.
 반면에 removeFirst는 배열 자체를 수정하기 때문에 디폴트 값이 없었습니다.
 빈 배열을 호출하게 된다면 에러가 발생하게 됩니다.
 Thread 1: Fatal error: Can't remove first element from an empty collection
 
 출처: https://hyerios.tistory.com/173
 
 swift는 String.SubSequence(=Substring) 라는 타입을 가진다.
 
 substring은 새로운 메모리를 할당하지 않고, 기존 string의 메모리를 재사용한다고 합니다.
 메모리 재사용은 메모리 할당 비용을 줄여준다는 장점이 있습니다.
 하지만 장기로 string을 저장하는 경우에는 이 방법이 적절하지 않다고 합니다 ~~  (왜?)

 출처: https://do-misol.tistory.com/72
 */

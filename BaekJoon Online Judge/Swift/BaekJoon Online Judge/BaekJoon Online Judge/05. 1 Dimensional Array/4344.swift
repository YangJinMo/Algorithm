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
    for _ in 1...Int(readLine()!)!{var s=readLine()!.split{$0==" "}.map{Double("\($0)")!},n=s.remove(at:0);print(String(format:"%.3f%%",Float(s.filter{$0>s.reduce(0,+)/n}.count)/Float(n)*100))}
  }
  func solution_9() {
    for _ in 1...Int(readLine()!)!{let s=readLine()!.split{$0==" "}.map{Int($0)!},a=s[1...s[0]];print(String(format:"%.3f%%",Float(a.filter{$0>a.reduce(0,+)/s[0]}.count)/Float(s[0])*100))}
  }
  /// https://www.acmicpc.net/short/status/4344/74/1
  /// 1등
  func solution_zzimss() {
    for _ in 1...Int(readLine()!)!{let s=readLine()!.split{$0==" "}.map{Int($0)!},n=s[0],a=s[1...n];print(String(format:"%.3f%%",Float(a.filter{$0>a.reduce(0,+)/n}.count)/Float(n)*100))}
  }
}

// https://stackoverflow.com/questions/52332747/what-are-the-supported-swift-string-format-specifiers/52332748

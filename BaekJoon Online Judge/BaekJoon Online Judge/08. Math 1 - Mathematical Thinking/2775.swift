//
//  2775.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/08/11.
//

/**
 - 제목: 부녀회장이 될테야
 - 원문: https://www.acmicpc.net/problem/2775
 */

// 3층  1  5 15 35 70
// 2층  1  4 10 20 35
// 1층  1  3  6 10 15
// 0층  1  2  3  4  5

class Problem_2775 {
  func solution_1() {
    let T = Int(readLine()!)!
    
    for _ in 1...T {
      //let k = Int(readLine()!)! // 층
      let n = Int(readLine()!)! // 호
      
      print((1...n).reduce(0, +)) // 1층 결과
      
      print((1...n).map{(1...$0).reduce(0, +)}) // 1층 배열
      
      print((1...n).map{(1...$0).reduce(0, +)}.reduce(0, +)) // 2층 결과
    }
  }
  func solution_2() {
    var apt: [[Int]] = Array(repeating: Array(repeating: 1, count: 15), count: 15)
    let T = Int(readLine()!)!
    
    for _ in 1...T {
      let K = Int(readLine()!)!
      let N = Int(readLine()!)!
      
      for n in 1...N {
        apt[0][n] = n + 1
      }
      
      for k in 1...K {
        for n in 1...N {
          apt[k][n] = apt[k][n-1] + apt[k-1][n]
        }
      }
      
      print(apt[K][N-1])
    }
  }
  func solution_3() {
    for _ in 1...Int(readLine()!)!{var apt=Array(repeating:Array(repeating:1,count:15),count:15),K=Int(readLine()!)!,N=Int(readLine()!)!;for n in 1...N{apt[0][n]=n+1};for k in 1...K{for n in 1...N{apt[k][n]=apt[k][n-1]+apt[k-1][n]}};print(apt[K][N-1])}
  }
  func solution_4() {
    func s(_ k: Int,_ n: Int) -> Int {
      return k == 0 || n == 1 ? n : s(k-1, n) + s(k, n-1)
    }
    for _ in 1...Int(readLine()!)! {
      print(s(Int(readLine()!)!, Int(readLine()!)!))
    }
  }
  /// https://www.acmicpc.net/short/status/2775/74/1
  /// 1등
  func solution_zzimss() {
    func s(_ k:Int,_ n:Int)->Int{k==0||n==1 ?n:s(k-1,n)+s(k,n-1)};for _ in 1...Int(readLine()!)!{print(s(Int(readLine()!)!,Int(readLine()!)!))}
  }
  // input: 2, 2
  // 1, 2 + 2, 1
  // 0, 2 + 1, 1 + 1
  // 2 + 1 + 1 = 4
}

//
//  2839.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/08/12.
//

/**
 - 제목: 설탕 배달
 - 문제: 상근이는 요즘 설탕공장에서 설탕을 배달하고 있다. 상근이는 지금 사탕가게에 설탕을 정확하게 N킬로그램을 배달해야 한다.
       설탕공장에서 만드는 설탕은 봉지에 담겨져 있다. 봉지는 3킬로그램 봉지와 5킬로그램 봉지가 있다.
       상근이는 귀찮기 때문에, 최대한 적은 봉지를 들고 가려고 한다. 예를 들어, 18킬로그램 설탕을 배달해야 할 때,
       3킬로그램 봉지 6개를 가져가도 되지만, 5킬로그램 3개와 3킬로그램 1개를 배달하면, 더 적은 개수의 봉지를 배달할 수 있다.
       상근이가 설탕을 정확하게 N킬로그램 배달해야 할 때, 봉지 몇 개를 가져가면 되는지 그 수를 구하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 N이 주어진다. (3 ≤ N ≤ 5000)
 - 출력: 상근이가 배달하는 봉지의 최소 개수를 출력한다. 만약, 정확하게 N킬로그램을 만들 수 없다면 -1을 출력한다.
 - 원문: https://www.acmicpc.net/problem/2839
 */

// 18
// 5 * 몫 3 = 15 나머지 3
// 몫 3 * 1 = 3 나머지 0
// 4

// 11
// 11 / 5 = 몫 2 나머지 1
//  1 / 3 = 몫 0 나머지 1
// 나머지가 0보다 크면 5의 몫에서 -1
// 11 - 5 * 몫 1 = 6
//  6 / 3 = 몫 2 나머지 0

// 5x + 3y = N
// x + y = ?
// 3x + 3y = 3?
// 2x = N - 3?
// (N - 2x) / 3 = ?

class Problem_2839 {
  func solution_1() {
    func solution(_ n: Int) -> Int {
      var N = n
      var i = 0
      
      if N % 5 == 0 {
        return N / 5
      }
      
      while N >= 0 {
        N -= 3
        i += 1
        
        if N % 5 == 0 {
          return N / 5 + i
        }
      }
      return -1
    }
    /// Test
    for n in 3...100 {
      print(n, solution(n))
    }
  }
  func solution_2() {
    func solution() -> Int {
      var N = Int(readLine()!)!
      var i = 0
      
      if N % 5 == 0 {
        return N / 5
      }
      
      while N >= 0 {
        N -= 3
        i += 1
        
        if N % 5 == 0 {
          return N / 5 + i
        }
      }
      return -1
    }
    print(solution())
  }
  func solution_3() {
    var N = Int(readLine()!)!
    var i = 0
    var r = -1
    
    if N % 5 == 0 {
      r = N / 5
    } else {
      while N >= 0 {
        N -= 3
        i += 1
        
        if N % 5 == 0 {
          r = N / 5 + i
          break
        }
      }
    }
    print(r)
  }
  func solution_4() {
    var N = Int(readLine()!)!
    var i = 0
    
    while N >= 0 { // equal while true
      if N % 5 == 0 { // 3으로만 나누어 떨어져 0이 되어도 0 % 5 == 0 이어서 이 if문에 해당
        i += N / 5
        print(i)
        break
      }
      N -= 3
      i += 1
      
      if N < 0 {
        print(-1)
        break
      }
    }
  }
  func solution_5() {
    var N=Int(readLine()!)!,i=0;while N>=0{if N%5==0{i+=N/5;print(i);break};N-=3;i+=1;if N<0{print(-1);break}}
  }
  func solution_6() {
    let l=Int(readLine()!)!;print([4,7].contains(l) ? -1:l-l*2/5*2)
  }
  /// https://www.acmicpc.net/short/status/2839/74/1
  /// 1등
  func solution_zzimss() {
    let l=Int(readLine()!)!;print(l==4||l==7 ? -1:l-l*2/5*2)
  }
}

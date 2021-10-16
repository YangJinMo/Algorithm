//
//  2231.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/10/15.
//

/**
 - 제목: 분해합
 - 문제: 어떤 자연수 N이 있을 때, 그 자연수 N의 분해합은 N과 N을 이루는 각 자리수의 합을 의미한다. 어떤 자연수 M의 분해합이 N인 경우, M을 N의 생성자라 한다.
       예를 들어, 245의 분해합은 256(=245+2+4+5)이 된다. 따라서 245는 256의 생성자가 된다.
       물론, 어떤 자연수의 경우에는 생성자가 없을 수도 있다. 반대로, 생성자가 여러 개인 자연수도 있을 수 있다.
       자연수 N이 주어졌을 때, N의 가장 작은 생성자를 구해내는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 자연수 N(1 ≤ N ≤ 1,000,000)이 주어진다.
 - 출력: 첫째 줄에 답을 출력한다. 생성자가 없는 경우에는 0을 출력한다.
 - 원문: https://www.acmicpc.net/problem/2231
 */

/// 분해합
/// 1 + 1 = 2
/// 2 + 2 = 4
/// ...
/// 199 + 1 + 9 + 9 = 218
///
/// 각 자리수의 합의 최소와 최대
/// 1의 자리: 1 ~ 9
/// 10의 자리: 1 ~ 9 x 2 = 18
/// 100의 자리: 1 ~ 9 x 3 = 27
/// 각 자리수의 합이 가장 커봐야 이 값들이기 때문에
/// N - 자릿수 x 9부터 확인하면 됩니다.
/// https://itadventure.tistory.com/158

class Problem_2231 {
    func solution_1() {
        let N = Int(readLine()!)!
        var r = 0
        
        for i in 1 ... N {
            if N == String(i).map { Int(String($0))! }.reduce(i, +) {
                r = i
                break
            }
        }
        print(r)
    }
    
    func solution_2() {
        let N = Int(readLine()!)!
        
        for i in 1 ... N {
            if N == String(i).map { Int(String($0))! }.reduce(i, +) {
                print(i)
                break
            }
            
            if i == N {
                print(0)
            }
        }
    }
    
    func solution_3() {
        let N = Int(readLine()!)!

        for i in 1...N {
            var num = i
            var sum = i
            
            while num > 0 {
                sum += num % 10
                num /= 10
            }
            
            if sum == N {
                print(i)
                break
            }
            
            if i == N {
                print(0)
            }
        }
    }
    
    func solution_4() {
        let N = Int(readLine()!)!
        let digits = String(N).count
        
        print(Array(N-digits*9..<N).first(where: {
            $0 + String($0).compactMap(\.wholeNumberValue).reduce(0, +) == N
        }) ?? 0)
    }
    
    /// https://www.acmicpc.net/short/status/2231/74/1
    /// 1등
    /// 113
    func solution_short_1() {
        var N=Int(readLine()!)!,r=0
        for i in 1...N{if N==String(i).map{Int(String($0))!}.reduce(i,+){r=i;break}}
        print(r)
    }
    /// 123
    func solution_short_2() {
        let N=Int(readLine()!)!
        for i in 1...N{if N==String(i).map{Int(String($0))!}.reduce(i,+){print(i);break};if i==N{print(0)}}
    }
    /// 143
    func solution_short_3() {
        let N=Int(readLine()!)!,d=String(N).count
        print(Array(N-d*9..<N).first(where:{String($0).compactMap(\.wholeNumberValue).reduce($0,+)==N}) ?? 0)
    }
    /// 121
    func solution_short_4() {
        let N=Int(readLine()!)!
        print(Array(1..<N).first(where:{String($0).compactMap(\.wholeNumberValue).reduce($0,+)==N}) ?? 0)
    }
    /// 118
    func solution_short_5() {
        let N=Int(readLine()!)!
        for i in 1...N{var n=i,s=i;while n>0{s+=n%10;n/=10};if s==N{print(i);break};if i==N{print(0)}}
    }
    /// 108
    func solution_short_6() {
        var N=Int(readLine()!)!,r=0
        for i in 1...N{var n=i,s=i;while n>0{s+=n%10;n/=10};if s==N{r=i;break}}
        print(r)
    }
}

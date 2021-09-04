//
//  11653.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/09/03.
//

/**
 - 제목: 소인수분해
 - 문제: 정수 N이 주어졌을 때, 소인수분해하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 정수 N (1 ≤ N ≤ 10,000,000)이 주어진다.
 - 출력: N의 소인수분해 결과를 한 줄에 하나씩 오름차순으로 출력한다. N이 1인 경우 아무것도 출력하지 않는다.
 - 원문: https://www.acmicpc.net/problem/11653
 */

/// 소인수: 어떤 자연수의 약수 중 소수인 수

class Problem_11653 {
    func solution_1() {
        var N = Int(readLine()!)!
        
        for i in 2... {
            while N > 1 {
                if N % i == 0 {
                    N /= i
                    print(i)
                } else {
                    break
                }
            }
            if N < 2 {
                break
            }
        }
    }
    func solution_2() {
        var N = Int(readLine()!)!
        var i = 2
        
        while N != 1 {
            while N % i == 0 {
                N /= i
                print(i)
            }
            i += 1
        }
    }
    func solution_3() {
        var N = Int(readLine()!)!
        var i = 2

        while N != 1 {
            if N % i == 0 {
                N /= i
                print(i)
            } else {
                i += 1
            }
        }
    }
    func solution_4() {
        var N = Int(readLine()!)!
        while N != 1 {
            for i in 2...N {
                while N % i == 0 {
                    print(i)
                    N /= i
                }
            }
        }
    }
    /// https://www.acmicpc.net/short/status/11653/74/1
    /// 1등
    func solution_short_1() {
        var N=Int(readLine()!)!,i=2;while N>1{if N%i==0{N/=i;print(i)}else{i+=1}}
    }
    func solution_short_2() {
        var N=Int(readLine()!)!,i=2;while N>1{while N%i==0{N/=i;print(i)};i+=1}
    }
    func solution_short_3() {
        var N=Int(readLine()!)!;while N>1{for i in 2...N{while N%i==0{N/=i;print(i)}}}
    }
}

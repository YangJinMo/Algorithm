//
//  10872.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/10/03.
//

/**
 - 제목: 팩토리얼
 - 문제: 0보다 크거나 같은 정수 N이 주어진다. 이때, N!을 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 정수 N(0 ≤ N ≤ 12)이 주어진다.
 - 출력: 첫째 줄에 N!을 출력한다.
 - 원문: https://www.acmicpc.net/problem/10872
 */

class Problem_10872 {
    func solution_1() {
        var N = Int(readLine()!)!
        
        if N == 0 {
            N = 1
        }
        
        var result = 1
        
        for i in 1 ... N {
            result *= i
        }
        
        print(result)
    }
    
    func solution_2() {
        var N = Int(readLine()!)!
        
        if N == 0 {
            N = 1
        }
        
        print((1 ... N).reduce(1, *))
    }
    
    func solution_3() {
        let N = Int(readLine()!)!
        print(N == 0 ? 1 : (1...N).reduce(1, *))
    }
    
    /// https://www.acmicpc.net/short/status/10872/74/1
    /// 2등 - 같은 코드
    func solution_short_1() {
        print((1...max(1,Int(readLine()!)!)).reduce(1,*))
    }
}

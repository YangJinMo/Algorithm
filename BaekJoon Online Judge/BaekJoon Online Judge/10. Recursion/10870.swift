//
//  10870.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/10/06.
//

/**
 - 제목: 피보나치 수 5
 - 문제: 피보나치 수는 0과 1로 시작한다. 0번째 피보나치 수는 0이고, 1번째 피보나치 수는 1이다.
       그 다음 2번째 부터는 바로 앞 두 피보나치 수의 합이 된다.
       이를 식으로 써보면 Fn = Fn-1 + Fn-2 (n ≥ 2)가 된다.
       n=17일때 까지 피보나치 수를 써보면 다음과 같다.
       0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597
       n이 주어졌을 때, n번째 피보나치 수를 구하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 n이 주어진다. n은 20보다 작거나 같은 자연수 또는 0이다.
 - 출력: 첫째 줄에 n번째 피보나치 수를 출력한다.
 - 원문: https://www.acmicpc.net/problem/10870
 */

class Problem_10870 {
    func solution_1() {
        let n = Int(readLine()!)!
        
        let fibonacciNumbers = [
            0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765
        ]
        
        print(fibonacciNumbers[n])
    }
    
    func solution_2() {
        let n = Int(readLine()!)!
        
        var fibonacciNumbers = [0, 1]
        
        if n > 1 {
            for i in 2...n {
                fibonacciNumbers.append(fibonacciNumbers[i - 1] + fibonacciNumbers[i - 2])
            }
        }
        
        print(fibonacciNumbers[n])
    }
    
    func solution_3() {
        let n = Int(readLine()!)!
        let dp = (3...20).reduce(into: [0, 1, 1], { $0.append($0[$1 - 2] + $0[$1 - 1]) })
        print(dp[n])
    }
    
    func solution_4() {
        func fivo(_ n: Int) -> Int {
            if n <= 1 {
                return n
            }
            return fivo(n-1) + fivo(n-2)
        }
        
        print(fivo(Int(readLine()!)!))
    }
    
    /// https://www.acmicpc.net/short/status/10870/74/1
    /// 1등
    func solution_short_1() {
        print([0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765][Int(readLine()!)!])
    }
    
    func solution_short_2() {
        var n=Int(readLine()!)!,f=[0,1]
        if n>1{for i in 2...n{f.append(f[i-1]+f[i-2])}}
        print(f[n])
    }
    
    func solution_short_3() {
        let f=(3...20).reduce(into:[0,1,1],{$0.append($0[$1-2]+$0[$1-1])})
        print(f[Int(readLine()!)!])
    }
    
    func solution_short_4() {
        func f(_ n:Int)->Int{n<2 ?n:f(n-1)+f(n-2)}
        print(f(Int(readLine()!)!))
    }
}

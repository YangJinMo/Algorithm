//
//  9020.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/09/18.
//

/**
 - 제목: 골드바흐의 추측
 - 문제: 1보다 큰 자연수 중에서  1과 자기 자신을 제외한 약수가 없는 자연수를 소수라고 한다. 예를 들어, 5는 1과 5를 제외한 약수가 없기 때문에 소수이다. 하지만, 6은 6 = 2 × 3 이기 때문에 소수가 아니다.
       골드바흐의 추측은 유명한 정수론의 미해결 문제로, 2보다 큰 모든 짝수는 두 소수의 합으로 나타낼 수 있다는 것이다.
       이러한 수를 골드바흐 수라고 한다. 또, 짝수를 두 소수의 합으로 나타내는 표현을 그 수의 골드바흐 파티션이라고 한다.
       예를 들면, 4 = 2 + 2, 6 = 3 + 3, 8 = 3 + 5, 10 = 5 + 5, 12 = 5 + 7, 14 = 3 + 11, 14 = 7 + 7이다. 10000보다 작거나 같은 모든 짝수 n에 대한 골드바흐 파티션은 존재한다.
       2보다 큰 짝수 n이 주어졌을 때, n의 골드바흐 파티션을 출력하는 프로그램을 작성하시오. 만약 가능한 n의 골드바흐 파티션이 여러 가지인 경우에는 두 소수의 차이가 가장 작은 것을 출력한다.
 - 입력: 첫째 줄에 테스트 케이스의 개수 T가 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있고 짝수 n이 주어진다.
 - 출력: 각 테스트 케이스에 대해서 주어진 n의 골드바흐 파티션을 출력한다. 출력하는 소수는 작은 것부터 먼저 출력하며, 공백으로 구분한다.
 - 원문: https://www.acmicpc.net/problem/9020
 */

class Problem_9020 {
    func solution_1() {
        let n = 10000
        var arr: [Int] = Array(repeating: 0, count: n + 1)

        for i in 2 ... n {
            arr[i] = i
        }

        for k in 2 ... n {
            for j in stride(from: k + k, through: n, by: k) {
                arr[j] = 0
            }
        }

        let T = Int(readLine()!)!

        for _ in 1 ... T {
            let num = Int(readLine()!)!
            var p1 = num / 2
            var p2 = num / 2
            while true {
                if (arr[p1] + arr[p2]) == num {
                    print(p1, p2)
                    break
                } else {
                    p1 -= 1
                    p2 += 1
                }
            }
        }
    }

    func solution_2() {
        let maxNum: Int = 10000
        var numArr: [Bool] = Array(repeating: true, count: maxNum + 1)

        numArr[1] = false

        Array(2 ... maxNum / 2).forEach {
            var i: Int = 2

            while $0 * i <= maxNum {
                numArr[$0 * i] = false
                i += 1
            }
        }
        var T = Int(readLine()!)!

        while T > 0 {
            let N = Int(readLine()!)!
            var i = N / 2
            var j = N / 2

            while true {
                if numArr[i] && numArr[j] {
                    print(i, j)
                    break
                }
                i -= 1
                j += 1
            }
            T -= 1
        }
    }

    func solution_3() {
        func prime(_ n: Int) -> Bool {
            if n < 4 {
                return true
            } else {
                for i in 2 ..< n {
                    if n % i == 0 {
                        return false
                    }
                }
                return true
            }
        }
        for _ in 1 ... Int(readLine()!)! {
            let n = Int(readLine()!)!
            for i in 0 ... n / 2 - 2 {
                if prime(n / 2 - i) && prime(n / 2 + i) {
                    print(n / 2 - i, n / 2 + i)
                    break
                }
            }
        }
    }

    /// https://www.acmicpc.net/short/status/9020/74/1
    /// 1등
    func solution_short_1() {
        func f(_ n:Int)->Bool{if n<4{return true}else{for i in 2..<n{if n%i==0{return false}};return true}};for _ in 1...Int(readLine()!)!{let n=Int(readLine()!)!/2;for i in 0...n-2 {if f(n-i)&&f(n+i){print(n-i,n+i);break}}}
    }
}

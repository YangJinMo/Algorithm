//
//  1978.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/08/25.
//

/**
 - 제목: 소수 찾기
 - 문제: 주어진 수 N개 중에서 소수가 몇 개인지 찾아서 출력하는 프로그램을 작성하시오.
 - 입력: 첫 줄에 수의 개수 N이 주어진다. N은 100이하이다. 다음으로 N개의 수가 주어지는데 수는 1,000 이하의 자연수이다.
 - 출력: 주어진 수들 중 소수의 개수를 출력한다.
 - 원문: https://www.acmicpc.net/problem/1978
 */

/// 소수는 1과 그 수 자신 이외의 자연수로는 나눌 수 없는 자연수.
/// 자연수는 1이상의 양의 정수
/// 2 이상 자신 미만의 수 중에 나누어 떨어지는 게 있으면 소수가 아니다.

class Problem_1978 {
    /// 프로그래머스 - 소수 찾기
    /// 에라토스테네스의 체
    /// https://ko.wikipedia.org/wiki/%EC%97%90%EB%9D%BC%ED%86%A0%EC%8A%A4%ED%85%8C%EB%84%A4%EC%8A%A4%EC%9D%98_%EC%B2%B4
    func solution_0() {
        let n = Int(readLine()!)!
        var numberArray: [Int] = Array(repeating: 0, count: n + 1)
        var count = 0
        
        for i in 2...n {
            if numberArray[i] == 0 {
                count += 1
                
                for i in stride(from: i, through: n, by: i) {
                    numberArray[i] = 1
                }
            }
        }
        print(count)
    }
    func solution_1() {
        func solution(number: Int) -> Int {
            if number == 1 {
                return 0
            }
            // number가 2일 경우, 2..<2는 유효한 range, 빈 구간으로 그냥 지나기 때문에 결국 1을 반환합니다.
            for i in 2..<number {
                if number % i == 0 {
                    return 0
                }
            }
            return 1
        }
        
        let _ = readLine()
        let numbers: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
        
        var count: Int = 0
        
        for number in numbers {
            count += solution(number: number)
        }
        print(count)
    }
    func solution_2() {
        func isPrime(_ num: Int) -> Bool {
            if num < 2 {
                return false
            }
            for i in 2..<num {
                if num % i == 0 {
                    return false
                }
            }
            return true
        }
        readLine();print(readLine()!.split{$0==" "}.map{Int(String($0))!}.filter{isPrime($0)}.count)
    }
    /// https://www.acmicpc.net/short/status/1978/74/1
    /// 1등
    func solution_zzimss() {
        readLine();print(readLine()!.split{$0==" "}.map{Int($0)!}.filter{i in i>1 && Array(2..<i).filter{i%$0==0}==[]}.count)
    }
}

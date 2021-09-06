//
//  1929.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/09/06.
//

/**
 - 제목: 소수 구하기
 - 문제: M이상 N이하의 소수를 모두 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 자연수 M과 N이 빈 칸을 사이에 두고 주어진다. (1 ≤ M ≤ N ≤ 1,000,000) M이상 N이하의 소수가 하나 이상 있는 입력만 주어진다.
 - 출력: 한 줄에 하나씩, 증가하는 순서대로 소수를 출력한다.
 - 입력: 3 16
 - 원문: https://www.acmicpc.net/problem/1929
 */

class Problem_1929 {
    /// 시간 초과
    func solution_1() {
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
        
        let line = readLine()!.split(separator: " ").map { Int($0)! }
        let M = line[0]
        let N = line[1]
        
        Array(M...N).filter{ isPrime($0) }.forEach { print($0) }
    }
    /// 시간 초과
    func solution_2() {
        let line = readLine()!.split(separator: " ").map { Int($0)! }
        let M = line[0]
        let N = line[1]
        Array(M...N).filter{i in i>1 && Array(2..<i).filter{i%$0==0}==[]}.forEach { print($0) }
    }
    func solution_3() {
        let line = readLine()!.split(separator: " ").map{ Int($0)! }
        let M = line[0]
        let N = line[1]
        
        var arr: [Int] = Array(repeating: 0, count: N + 1)
        
        for i in 2...N {
            arr[i] = i
        }

        for j in 2...N {
            if arr[j] == 0 { continue }
            for k in stride(from: j + j, through: N, by: j) {
                arr[k] = 0
            }
        }

        for w in M...N {
            if arr[w] != 0 {
                print("\(arr[w])")
            }
        }
    }
    func solution_3_2() {
        let line = readLine()!.split(separator: " ").map{ Int($0)! }
        let M = line[0]
        let N = line[1]
        
        var arr: [Int] = Array(repeating: 0, count: N + 1)
        
        for i in 2...N {
            arr[i] = i
        }

        for j in 2...N {
            if arr[j] > 0 {
                for k in stride(from: j + j, through: N, by: j) {
                    arr[k] = 0
                }
            }
        }

        for w in M...N {
            if arr[w] > 0 {
                print(arr[w])
            }
        }
    }
    /// https://www.acmicpc.net/short/status/1929/74/1
    /// 1등
    func solution_short_1() {
        var l=readLine()!.split{$0==" "}.map{Int($0)!},N=l[1],a=Array(repeating:0,count:N+1);(2...N).map{a[$0]=$0};for j in 2...N{if a[j]>0{for k in stride(from:j+j,through:N,by:j){a[k]=0}}};(l[0]...N).filter{a[$0]>0}.map{print($0)}
    }
    func solution_short_2() {
        var l=readLine()!.split{$0==" "}.map{Int($0)!},N=l[1],a=Array(repeating:0,count:N+1);(2...N).map{a[$0]=$0};for j in 2...N{if a[j]>0{for k in stride(from:j+j,through:N,by:j){a[k]=0}}};(l[0]...N).map{if a[$0]>0{print($0)}}
    }
}

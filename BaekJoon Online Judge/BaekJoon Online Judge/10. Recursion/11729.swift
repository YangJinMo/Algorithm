//
//  11729.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/10/11.
//

/**
 - 제목: 하노이 탑 이동 순서
 - 문제: 세 개의 장대가 있고 첫 번째 장대에는 반경이 서로 다른 n개의 원판이 쌓여 있다. 각 원판은 반경이 큰 순서대로 쌓여있다.
       이제 수도승들이 다음 규칙에 따라 첫 번째 장대에서 세 번째 장대로 옮기려 한다.
       한 번에 한 개의 원판만을 다른 탑으로 옮길 수 있다.
       쌓아 놓은 원판은 항상 위의 것이 아래의 것보다 작아야 한다.
       이 작업을 수행하는데 필요한 이동 순서를 출력하는 프로그램을 작성하라. 단, 이동 횟수는 최소가 되어야 한다.
       아래 그림은 원판이 5개인 경우의 예시이다.
 - 입력: 첫째 줄에 첫 번째 장대에 쌓인 원판의 개수 N (1 ≤ N ≤ 20)이 주어진다.
 - 출력: 첫째 줄에 옮긴 횟수 K를 출력한다. 두 번째 줄부터 수행 과정을 출력한다.
       두 번째 줄부터 K개의 줄에 걸쳐 두 정수 A B를 빈칸을 사이에 두고 출력하는데,
       이는 A번째 탑의 가장 위에 있는 원판을 B번째 탑의 가장 위로 옮긴다는 뜻이다.
 - 원문: https://www.acmicpc.net/problem/11729
 */

/// 하노이의 탑 (Tower of Hanoi)
/// https://en.wikipedia.org/wiki/Tower_of_Hanoi
/// https://ko.wikipedia.org/wiki/%ED%95%98%EB%85%B8%EC%9D%B4%EC%9D%98_%ED%83%91#Swift - code
/// https://st-lab.tistory.com/96 - explain
/// LIFO: Stack

import Foundation /// pow

class Problem_11729 {
    func solution_1() {
        func move(from: Int, to: Int) {
            // print(from, to) - 시간 초과
            print("\(from) \(to)")
        }
        
        func hanoi(_ n: Int, rod1 a: Int, rod2 b: Int, rod3 c: Int) {
            if n == 1 {
                move(from: a, to: c)
            } else {
                hanoi(n-1, rod1: a, rod2: c, rod3: b)
                move(from: a, to: c)
                hanoi(n-1, rod1: b, rod2: a, rod3: c)
            }
        }
        let N: Int = Int(readLine()!)!
        print(pow(2, N) - 1)
        hanoi(N, rod1: 1, rod2: 2, rod3: 3)
    }
    
    func solution_2() {
        func move(from: Int, to: Int) {
            print("\(from) \(to)")
        }
        
        func hanoi(_ n: Int, rod1 a: Int, rod2 b: Int, rod3 c: Int) {
            if n == 1 {
                move(from: a, to: c)
            } else {
                hanoi(n-1, rod1: a, rod2: c, rod3: b)
                move(from: a, to: c)
                hanoi(n-1, rod1: b, rod2: a, rod3: c)
            }
        }
        
        let N: Int = Int(readLine()!)!
        var result = 1
        
        for _ in 0..<N {
            result *= 2
        }
        
        print(result - 1)

        hanoi(N, rod1: 1, rod2: 2, rod3: 3)
    }
    
    func solution_3() {
        var arr: [String] = []
        func hanoi(_ n:Int, _ s:Int, _ l:Int, _ e:Int) {
            if n == 1 {
                arr.append("\(s) \(e)")
                return
            }
            hanoi(n-1, s, e, l)
            arr.append("\(s) \(e)")
            hanoi(n-1, l, s, e)
        }
        hanoi(Int(readLine()!)!, 1, 2, 3)
        print(arr.count)
        arr.forEach{print($0)}
    }
    
    func solution_4() {
        func hanoi(n: Int, from: Int, to: Int) {
            if n == 1 {
                print("\(from) \(to)")
                return
            }
            let temp: Int = 6 - from - to
            hanoi(n: n - 1, from: from, to: temp)
            print("\(from) \(to)")
            hanoi(n: n - 1, from: temp, to: to)
        }
        let n: Int = Int(readLine()!)!
        print(1<<n - 1)
        hanoi(n: n, from: 1, to: 3)
    }
    
    func solution_5() {
        let n = Int(readLine()!)!
        print(pow(2, n) - 1)
        hanoi(n, 1, 2, 3)

        func hanoi(_ n: Int, _ start: Int, _ mid: Int, _ end: Int) {
            if n == 1 {
                print("\(start) \(end)")
                return
            }
            hanoi(n - 1, start, end, mid)
            hanoi(1, start, mid, end)
            hanoi(n - 1, mid, start, end)
        }
    }
    
    /// https://www.acmicpc.net/short/status/11729/74/1
    /// 1등
    func solution_short_1() {
        func h(_ n:Int,_ f:Int,_ t:Int){if n==1{print("\(f) \(t)")}else{let p=6-f-t;h(n-1,f,p);h(1,f,t);h(n-1,p,t)}}
        let n=Int(readLine()!)!
        print(1<<n-1)
        h(n,1,3)
    }
}

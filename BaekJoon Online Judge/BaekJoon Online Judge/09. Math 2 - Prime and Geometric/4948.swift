//
//  4948.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/09/07.
//

/**
 - 제목: 베르트랑 공준
 - 문제: 베르트랑 공준은 임의의 자연수 n에 대하여, n보다 크고, 2n보다 작거나 같은 소수는 적어도 하나 존재한다는 내용을 담고 있다.
       이 명제는 조제프 베르트랑이 1845년에 추측했고, 파프누티 체비쇼프가 1850년에 증명했다.
       예를 들어, 10보다 크고, 20보다 작거나 같은 소수는 4개가 있다. (11, 13, 17, 19) 또, 14보다 크고, 28보다 작거나 같은 소수는 3개가 있다. (17,19, 23)
       자연수 n이 주어졌을 때, n보다 크고, 2n보다 작거나 같은 소수의 개수를 구하는 프로그램을 작성하시오.
 - 입력: 입력은 여러 개의 테스트 케이스로 이루어져 있다. 각 케이스는 n을 포함하는 한 줄로 이루어져 있다. 입력의 마지막에는 0이 주어진다.
 - 출력: 각 테스트 케이스에 대해서, n보다 크고, 2n보다 작거나 같은 소수의 개수를 출력한다.
 - 원문: https://www.acmicpc.net/problem/4948
 */

class Problem_4948 {
    func solution_1() {
        while let l = readLine() {
            let N = Int(l)!
            if N == 0 { break }
            
            var arr: [Int] = Array(repeating: 0, count: 2 * N + 1)
            
            for i in 2...2*N {
                arr[i] = i
            }

            for j in 2...2*N {
                if arr[j] > 0 {
                    for k in stride(from: j + j, through: 2*N, by: j) {
                        arr[k] = 0
                    }
                }
            }
            print((N+1...2*N).filter { arr[$0] > 0 }.count)
        }
    }
    /// https://www.acmicpc.net/short/status/4948/74/1
    /// 1등
    func solution_short_1() {
        while let l=readLine(){var N=Int(l)!,T=2*N,a=Array(repeating:0,count:T+1);if N<1{break};(2...T).map{a[$0]=$0};for j in 2...T{if a[j]>0{for k in stride(from:j+j,through:T,by:j){a[k]=0}}};print((N+1...T).filter{a[$0]>0}.count)}
    }
}


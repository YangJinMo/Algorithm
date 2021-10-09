//
//  2447.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/10/08.
//

/**
 - 제목: 별 찍기 - 10
 - 문제: 재귀적인 패턴으로 별을 찍어 보자. N이 3의 거듭제곱(3, 9, 27, ...)이라고 할 때, 크기 N의 패턴은 N×N 정사각형 모양이다.
       크기 3의 패턴은 가운데에 공백이 있고, 가운데를 제외한 모든 칸에 별이 하나씩 있는 패턴이다.
       N이 3보다 클 경우, 크기 N의 패턴은 공백으로 채워진 가운데의 (N/3)×(N/3) 정사각형을 크기 N/3의 패턴으로 둘러싼 형태이다. 예를 들어 크기 27의 패턴은 예제 출력 1과 같다.
 - 입력: 첫째 줄에 N이 주어진다. N은 3의 거듭제곱이다. 즉 어떤 정수 k에 대해 N=3k이며, 이때 1 ≤ k < 8이다.
 - 출력: 첫째 줄부터 N번째 줄까지 별을 출력한다.
 - 원문: https://www.acmicpc.net/problem/2447
 */

/// 분할 정복 알고리즘(Divide and conquer algorithm)
/// 그대로 해결할 수 없는 문제를 작은 문제로 분할하여 문제를 해결하는 방법이나 알고리즘이다.
/// 빠른 정렬이나 합병 정렬로 대표되는 정렬 알고리즘 문제와 고속 푸리에 변환(FFT) 문제가 대표적이다.

class Problem_2447 {
    func solution_1() {
        let N = Int(readLine()!)!
        var res = ""

        func printStar(_ row: Int, _ col: Int, _ N: Int) {
            if row % 3 == 1 && col % 3 == 1 {
                res += " "
            } else if N == 1 {
                res += "*"
            } else {
                printStar(row/3, col/3, N/3)
            }
        }

        for row in 0 ..< N {
            for col in 0 ..< N {
                printStar(row, col, N)
            }
            res += "\n"
        }
        print(res)
    }
    
    func solution_2() {
        func f(num: Int, pattern: [String]) {
            if num == 1 {
                pattern.forEach { print($0) }
                return
            }
            
            let row1: [String] = pattern.map { $0 + $0 + $0 }
            let row2: [String] = pattern.map { $0 + String(repeating: " ", count: $0.count) + $0 }
            let newPattern: [String] = row1 + row2 + row1
            
            f(num: num/3, pattern: newPattern)
        }
        
        let N = Int(readLine()!)!
        f(num: N, pattern: ["*"])
    }
    
    func solution_3() {
        let N=Int(readLine()!)!
        var r=Array(repeating:Array(repeating:"*",count:N),count:N)
        func f(_ r: inout [[String]],_ a:Int,_ b:Int,_ c:Int){
            let t=c/3
            if t<1{return}
            for x in a+t..<a+t*2{for y in b+t..<b+t*2{r[x][y]=" "}}
            for x in 0...2{for y in 0...2{f(&r,a+t*x,b+t*y,t)}}
        }
        f(&r,0,0,N)
        r.forEach{print($0.joined())}
    }
    
    /// https://www.acmicpc.net/short/status/2447/74/1
    /// 1등
    func solution_short_1() {
        var N=Int(readLine()!)!,p=""
        func f(_ r:Int,_ c:Int,_ N:Int){if r%3==1&&c%3==1{p+=" "}else if N==1{p+="*"}else{f(r/3,c/3,N/3)}}
        for r in 0..<N{for c in 0..<N{f(r,c,N)};p+="\n"}
        print(p)
    }
    
    func solution_short_2() {
        func f(n:Int,p:[String]){if n==1{p.forEach{print($0)};return};let a=p.map{$0+$0+$0};f(n:n/3,p:a+p.map{$0+String(repeating:" ",count:$0.count)+$0}+a)};f(n:Int(readLine()!)!,p:["*"])
    }
}

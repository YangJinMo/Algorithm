//
//  3009.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/09/27.
//

/**
 - 제목: 네 번째 점
 - 문제: 세 점이 주어졌을 때, 축에 평행한 직사각형을 만들기 위해서 필요한 네 번째 점을 찾는 프로그램을 작성하시오.
 - 입력: 세 점의 좌표가 한 줄에 하나씩 주어진다. 좌표는 1보다 크거나 같고, 1000보다 작거나 같은 정수이다.
 - 출력: 직사각형의 네 번째 점의 좌표를 출력한다.
 - 원문: https://www.acmicpc.net/problem/3009
 */

class Problem_3009 {
    func solution_1() {
        let arr: [[Int]] = (1 ... 3).map { _ in
            readLine()!.split(separator: " ").compactMap { Int($0) }
        }
        
        var x = 0
        var y = 0
        
        if arr[0][0] == arr[1][0] {
            x = arr[2][0]
        } else if arr[0][0] == arr[2][0] {
            x = arr[1][0]
        } else {
            x = arr[0][0]
        }
        
        if arr[0][1] == arr[1][1] {
            y = arr[2][1]
        } else if arr[0][1] == arr[2][1] {
            y = arr[1][1]
        } else {
            y = arr[0][1]
        }
        
        print(x, y)
    }

    
    func solution_2() {
        var x = 0
        var y = 0
        
        for _ in 1...3 {
            let a = readLine()!.split(separator: " ")
            
            x ^= Int(a[0])!
            y ^= Int(a[1])!
        }
        
        print(x,y)
    }
    /// https://www.acmicpc.net/short/status/3009/74/1
    /// 1등
    func solution_short_1() {
        var x=0,y=0
        for _ in 1...3{let a=readLine()!.split{$0==" "};x^=Int(a[0])!;y^=Int(a[1])!}
        print(x,y)
    }
}

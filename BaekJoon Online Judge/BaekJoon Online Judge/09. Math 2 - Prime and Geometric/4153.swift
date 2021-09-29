//
//  4153.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/09/29.
//

/**
 - 제목: 직각삼각형
 - 문제: 과거 이집트인들은 각 변들의 길이가 3, 4, 5인 삼각형이 직각 삼각형인것을 알아냈다. 주어진 세변의 길이로 삼각형이 직각인지 아닌지 구분하시오.
 - 입력: 입력은 여러개의 테스트케이스로 주어지며 마지막줄에는 0 0 0이 입력된다.
       각 테스트케이스는 모두 30,000보다 작은 양의 정수로 주어지며, 각 입력은 변의 길이를 의미한다.
 - 출력: 각 입력에 대해 직각 삼각형이 맞다면 "right", 아니라면 "wrong"을 출력한다.
 - 원문: https://www.acmicpc.net/problem/4153
 */

class Problem_4153 {
    func solution_1() {
        while let line = readLine() {
            var arrInt = line.split(separator: " ").map { Int($0)! * Int($0)! }
            
            //if arrInt.reduce(1,*) == 0 { // 런타임 에러
            if arrInt.contains(0) {
            //if arrInt.allSatisfy({ $0 == 0 }) {
                break
            } else {
                arrInt.sort()
                print(arrInt[0] + arrInt[1] == arrInt[2] ? "right" : "wrong")
            }
        }
    }
    
    func solution_2() {
        while let line = readLine() {
            var arrInt = line.split(separator: " ").compactMap { Int($0) }
            arrInt.sort()
            
            let (a, b, c) = (arrInt[0], arrInt[1], arrInt[2])
            
            //if arrInt.reduce(1,*) == 0 { // 시간 더 걸림
            if a * b * c == 0 {
                break
            } else if a * a + b * b == c * c {
                print("right")
            } else {
                print("wrong")
            }
        }
    }

    /// https://www.acmicpc.net/short/status/4153/74/1
    /// 1등
    /// 142
    func solution_short_1() {
        while let l=readLine(){var a=l.split{$0==" "}.map{Int($0)!*Int($0)!};if a.contains(0){break};a.sort();print(a[0]+a[1]==a[2] ?"right":"wrong")}
    }
    /// 136
    func solution_short_2() {
        while let l=readLine(){var a=l.split{$0==" "}.map{Int($0)!*Int($0)!};a.sort();if a[0]==0{break};print(a[0]+a[1]==a[2] ?"right":"wrong")}
    }
    /// 136
    func solution_short_3() {
        while let l=readLine(){let a=l.split{$0==" "}.map{Int($0)!*Int($0)!}.sorted();if a[0]==0{break};print(a[0]+a[1]==a[2] ?"right":"wrong")}
    }
    /// 142
    func solution_short_4() {
        while let l=readLine(){let a=l.split{$0==" "}.map{Int($0)!}.sorted(),x=a[0],y=a[1],z=a[2];if x==0{break};print(x*x+y*y==z*z ?"right":"wrong")}
    }
}

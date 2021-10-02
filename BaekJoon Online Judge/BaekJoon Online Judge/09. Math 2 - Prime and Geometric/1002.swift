//
//  1002.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/10/02.
//

/**
 - 제목: 터렛
 - 문제: 조규현과 백승환은 터렛에 근무하는 직원이다. 하지만 워낙 존재감이 없어서 인구수는 차지하지 않는다. 다음은 조규현과 백승환의 사진이다.
       이석원은 조규현과 백승환에게 상대편 마린(류재명)의 위치를 계산하라는 명령을 내렸다.
       조규현과 백승환은 각각 자신의 터렛 위치에서 현재 적까지의 거리를 계산했다.
       조규현의 좌표 (x1, y1)와 백승환의 좌표 (x2, y2)가 주어지고, 조규현이 계산한 류재명과의 거리 r1과 백승환이 계산한 류재명과의 거리 r2가 주어졌을 때,
       류재명이 있을 수 있는 좌표의 수를 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 테스트 케이스의 개수 T가 주어진다. 각 테스트 케이스는 다음과 같이 이루어져 있다.
       한 줄에 x1, y1, r1, x2, y2, r2가 주어진다. x1, y1, x2, y2는 -10,000보다 크거나 같고, 10,000보다 작거나 같은 정수이고, r1, r2는 10,000보다 작거나 같은 자연수이다.
 - 출력: 각 테스트 케이스마다 류재명이 있을 수 있는 위치의 수를 출력한다. 만약 류재명이 있을 수 있는 위치의 개수가 무한대일 경우에는 -1을 출력한다.
 - 원문: https://www.acmicpc.net/problem/1002
 */

// 두 원의 위치관계
// https://mathbang.net/101#recentComments

import Foundation

class Problem_1002 {
    func solution_1() {
        let T: Int = Int(readLine()!)!
            
        for _ in 0 ..< T {
            let intArr: [Double] = readLine()!.split(separator: " ").compactMap { Double($0) }
            
            let distPow: Double = pow(intArr[0] - intArr[3], 2) + pow(intArr[1] - intArr[4], 2)
            let rAddPow: Double = pow(intArr[2] + intArr[5], 2)
            let rSubPow: Double = pow(intArr[2] - intArr[5], 2)
            
            if intArr[0] == intArr[3] && intArr[1] == intArr[4] && intArr[2] == intArr[5] {
                print(-1)
            } else if distPow > rAddPow || distPow < rSubPow {
                print(0)
            } else if distPow == rAddPow || distPow == rSubPow {
                print(1)
            } else {
                print(2)
            }
        }
    }
    
    func solution_2() {
        let T: Int = Int(readLine()!)!
            
        for _ in 0 ..< T {
            let a: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
            let (x1, y1, r1, x2, y2, r2) = (a[0], a[1], a[2], a[3], a[4], a[5])
            
            let dX: Int = x1 - x2
            let dY: Int = y1 - y2
            let addR: Int = r1 + r2
            let subR: Int = r1 - r2
            
            let dP: Int = (dX * dX) + (dY * dY)
            let addP: Int = addR * addR
            let subP: Int = subR * subR
            
            // if sqrt(dP) == 0 && r1 == r2 {
            if x1 == x2 && y1 == y2 && r1 == r2 { // 동심원
                print(-1)
            } else if dP > addP || dP < subP { // 외부, 내부
                print(0)
            } else if dP == addP || dP == subP { // 외접, 내접
                print(1)
            } else { // subP < dP < addP
                print(2)
            }
        }
    }

    /// https://www.acmicpc.net/short/status/1002/74/1
    /// 1등
    func solution_short_1() {
        for _ in 0..<Int(readLine()!)!{let a=readLine()!.split{$0==" "}.map{Int($0)!},(x1,y1,r1,x2,y2, r2)=(a[0],a[1],a[2],a[3],a[4],a[5]),dX=x1-x2,dY=y1-y2,addR=r1+r2,subR=r1-r2,dP=dX*dX+dY*dY,addP=addR*addR,subP=subR*subR;if x1==x2&&y1==y2&&r1==r2{print(-1)}else if dP>addP||dP<subP{print(0)}else if dP==addP||dP==subP{print(1)}else{print(2)}}
    }
    
    func solution_short_2() {
        readLine()
        while let l=readLine(){var a=l.split{$0==" "}.map{Int($0)!},(x,y,r,e,f,g)=(a[0],a[1],a[2],a[3],a[4],a[5]),q=x-e,w=y-f,m=r+g,n=r-g,d=q*q+w*w,i=m*m,j=n*n,v=2;if x==e&&y==f&&r==g{v = -1}else if d>i||d<j{v=0}else if d==i||d==j{v=1};print(v)}
    }
}

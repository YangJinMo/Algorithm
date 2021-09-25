//
//  1085.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/09/23.
//

/**
 - 제목: 직사각형에서 탈출
 - 문제: 한수는 지금 (x, y)에 있다. 직사각형은 각 변이 좌표축에 평행하고, 왼쪽 아래 꼭짓점은 (0, 0), 오른쪽 위 꼭짓점은 (w, h)에 있다.
       직사각형의 경계선까지 가는 거리의 최솟값을 구하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 x, y, w, h가 주어진다.
 - 출력: 첫째 줄에 문제의 정답을 출력한다.
 - 원문: https://www.acmicpc.net/problem/1085
 */

class Problem_1085 {
    func solution_1() {
        var arrInt: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
        let (x, y, w, h) = (arrInt[0], arrInt[1], arrInt[2], arrInt[3])
        arrInt.append(w-x)
        arrInt.append(h-y)
        print(arrInt.min()!)
    }

    /// https://www.acmicpc.net/short/status/1085/74/1
    /// 2등
    func solution_short_1() {
        let l=readLine()!.split{$0==" "}.map{Int($0)!}
        print(min(l[0],l[1],l[2]-l[0],l[3]-l[1]))
    }
    func solution_short_2() {
        let l=readLine()!.split{$0==" "}.map{Int($0)!},x=l[0],y=l[1]
        print(min(x,y,l[2]-x,l[3]-y))
    }
}

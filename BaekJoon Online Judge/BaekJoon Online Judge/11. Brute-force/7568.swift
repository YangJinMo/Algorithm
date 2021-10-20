//
//  7568.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/10/17.
//

/**
 - 제목: 덩치
 - 문제: 원문 참조
 - 입력: 첫 줄에는 전체 사람의 수 N이 주어진다. 그리고 이어지는 N개의 줄에는 각 사람의 몸무게와 키를 나타내는 양의 정수 x와 y가 하나의 공백을 두고 각각 나타난다.
 - 출력: 여러분은 입력에 나열된 사람의 덩치 등수를 구해서 그 순서대로 첫 줄에 출력해야 한다. 단, 각 덩치 등수는 공백문자로 분리되어야 한다.
 - 제한: 2 ≤ N ≤ 50, 10 ≤ x, y ≤ 200
 - 원문: https://www.acmicpc.net/problem/7568
 */

class Problem_7568 {
    func solution_1() {
        let N = Int(readLine()!)!
        var arr = [[Int]]()

        for _ in 0 ..< N {
            arr.append(readLine()!.split(separator: " ").map { Int($0)! })
        }

        for i in 0 ..< N {
            var rank = 1

            for j in 0 ..< N {
                if arr[i][0] < arr[j][0] && arr[i][1] < arr[j][1] {
                    rank += 1
                }
            }

            print(rank, terminator: " ")
        }
    }
    
    func solution_1_2() {
        var arr = [[Int]]()

        (0 ..< Int(readLine()!)!).forEach { _ in
            let a = readLine()!.split(separator: " ").map { Int($0)! }
            arr.append(a)
        }

        for i in 0 ..< arr.count {
            var rank = 1

            for j in 0 ..< arr.count {
                if i == j { continue }
                if arr[i][0] < arr[j][0] && arr[i][1] < arr[j][1] {
                    rank += 1
                }
            }
            
            print(rank, terminator: " ")
        }
    }

    func solution_2() {
        var arr = [(Int, Int)]()
        var ret = ""

        for _ in 0 ..< Int(readLine()!)! {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            arr.append((input[0], input[1]))
        }

        for i in arr {
            ret += "\(arr.filter({ $0.0 > i.0 && $0.1 > i.1 }).count + 1) "
        }

        print(ret)
    }

    /// https://www.acmicpc.net/short/status/7568/74/1
    /// 1등
    func solution_short_1() {
        var a=[(Int,Int)](),r=""
        for _ in 0..<Int(readLine()!)!{let l=readLine()!.split{$0==" "};a.append((Int(l[0])!,Int(l[1])!))}
        for i in a{r+="\(a.filter({$0.0>i.0 && $0.1>i.1}).count+1) "}
        print(r)
    }
    
    func solution_short_2() {
        var a=[[Int]]()
        for _ in 0..<Int(readLine()!)!{let l=readLine()!.split{$0==" "}.map{Int($0)!};a.append(l)}
        for i in 0..<a.count{var rank=1;for j in 0..<a.count{if a[i][0]<a[j][0]&&a[i][1]<a[j][1]{rank+=1}};print(rank,terminator:" ")}
    }
}

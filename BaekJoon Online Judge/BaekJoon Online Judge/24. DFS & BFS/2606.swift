//
//  2606.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/09/11.
//

/**
 - 제목: 바이러스
 - 입력: 첫째 줄에는 컴퓨터의 수가 주어진다. 컴퓨터의 수는 100 이하이고 각 컴퓨터에는 1번 부터 차례대로 번호가 매겨진다.
       둘째 줄에는 네트워크 상에서 직접 연결되어 있는 컴퓨터 쌍의 수가 주어진다. 이어서 그 수만큼 한 줄에 한 쌍씩 네트워크 상에서 직접 연결되어 있는 컴퓨터의 번호 쌍이 주어진다.
 - 출력: 1번 컴퓨터가 웜 바이러스에 걸렸을 때, 1번 컴퓨터를 통해 웜 바이러스에 걸리게 되는 컴퓨터의 수를 첫째 줄에 출력한다.
 - 원문: https://www.acmicpc.net/problem/2606
 */

/// 풀이 방법: BFS/DFS, Union-Find, Floyd-Warshall

class Problem_2606 {
    /// Union-Find
    func solution_1() {
        func find(_ x: Int) -> Int {
            if parents[x] == x {
                return x
            } else {
                let y = find(parents[x])
                parents[x] = y
                return y
            }
        }

        func union(_ x: Int, _ y: Int) {
            let xRoot: Int = find(x)
            let yRoot: Int = find(y)

            if xRoot < yRoot {
                parents[yRoot] = xRoot
            } else {
                parents[xRoot] = yRoot
            }
        }

        let computers: Int = Int(readLine()!)!
        let connections: Int = Int(readLine()!)!

        var parents: [Int] = [Int]()

        for i in 0 ... computers {
            parents.append(i)
        }

        for _ in 1 ... connections {
            let arrInt: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
            let x: Int = arrInt.first!
            let y: Int = arrInt.last!

            union(x, y)
        }

        var count: Int = 0

        for i in 2 ... computers {
            if find(i) == 1 {
                count += 1
            }
        }
        print(count)
    }

    /// Union-Find (inout union)
    func solution_2() {
        func find(_ x: Int) -> Int {
            if parents[x] == x {
                return x
            } else {
                let y = find(parents[x])
                parents[x] = y
                return y
            }
        }

        func union(_ x: inout Int, _ y: inout Int) {
            x = find(x)
            y = find(y)

            if x != y {
                parents[y] = x
            }
        }

        let computers: Int = Int(readLine()!)!

        var parents: [Int] = [Int]()

        for i in 0 ... computers {
            parents.append(i)
        }

        /// 반복문 종료: control + d
        while let readLine = readLine() {
            let arrInt: [Int] = readLine.split(separator: " ").compactMap { Int($0) }
            var x: Int = arrInt.first!
            var y: Int = arrInt.last!

            union(&x, &y)
        }
        
        print((2 ... computers).filter { find($0) == 1 }.count)
    }

    /// DFS - https://icksw.tistory.com/85
    func solution_3() {
        let computerCount: Int = Int(readLine()!)!
        let networkCount: Int = Int(readLine()!)!
        var network: [Int: [Int]] = [Int: [Int]]()

        for i in 1 ... computerCount { network[i] = [] }

        /// 인접 리스트 방식, 무방향 그래프
        for _ in 0 ..< networkCount {
            let edges = readLine()!.split(separator: " ").compactMap { Int($0) }
            let (x, y) = (edges[0], edges[1])

            network[x]?.append(y)
            network[y]?.append(x)
        }

        var stack: [Int] = [1]
        var visited: [Int] = []

        while stack.count != 0 {
            guard let computer: Int = stack.popLast() else { fatalError() }

            if !visited.contains(computer) {
                visited.append(computer)

                guard let temp2: [Int] = network[computer] else { fatalError() }
                stack += temp2
                // stack.append(contentsOf: temp2)
            }
        }
        print(visited.count - 1)
    }

    /// BFS
    func solution_4() {
        func BFS(start: Int) {
            var queue: [Int] = [start]

            while !queue.isEmpty {
                let node: Int = queue.removeFirst()
                
                if !visited.contains(node) {
                    visited.append(node)
                    queue.append(contentsOf: network[node])
                }
            }
        }

        let nodeCount: Int = Int(readLine()!)!
        let edgeCount: Int = Int(readLine()!)!
        var network: [[Int]] = Array(repeating: [], count: nodeCount + 1)
        var visited: [Int] = []

        /// 인접 리스트 방식, 무방향 그래프
        for _ in 0 ..< edgeCount {
            let edges: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
            let src: Int = edges[0]
            let dest: Int = edges[1]

            network[src].append(dest)
            network[dest].append(src)
        }

        BFS(start: 1)
        print(visited.count - 1)
    }

    func solution_5() {
        _ = readLine()
        let edges: [[Int]] = (1 ... Int(readLine()!)!).map { _ in readLine()!.split(separator: " ").compactMap { Int($0) } }
        var nodes: Set<Int> = [1]
        var count: Int = 0

        while nodes.count > count {
            count = nodes.count

            for edge in edges {
                let (x, y) = (edge[0], edge[1])

                if nodes.contains(x) {
                    nodes.insert(y)
                } else if nodes.contains(y) {
                    nodes.insert(x)
                }
            }
        }
        print(count - 1)
    }

    /// https://www.acmicpc.net/short/status/2606/74/1
    /// 1등
    func solution_short_1() {
        readLine();var e=(1...Int(readLine()!)!).map{_ in readLine()!.split{$0==" "}.map{Int($0)!}},n:Set<Int>=[1],c=0;while n.count>c{c=n.count;e.map{let x=$0[0],y=$0[1];if n.contains(x){n.insert(y)}else if n.contains(y){n.insert(x)}}};print(c-1)
    }
}

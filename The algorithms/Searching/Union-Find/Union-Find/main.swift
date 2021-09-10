//
//  main.swift
//  Union-Find
//
//  Created by Jmy on 2021/09/11.
//

let nodes: [Int] = (0 ... 7).map { $0 }
let edges: [[Int]] = [[1, 2], [2, 3], [1, 5], [5, 2], [5, 6], [4, 7]]

var parents: [Int] = nodes

for edge in edges {
    union(edge[0], edge[1])
//    var (x, y) = (edge[0], edge[1])
//    union(&x, &y)
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

func union(_ x: inout Int, _ y: inout Int) {
    x = find(x)
    y = find(y)

    if x < y {
        parents[y] = x
    } else {
        parents[x] = y
    }
}

func find(_ x: Int) -> Int {
    if parents[x] == x {
        return x
    } else {
        let y = find(parents[x])
        parents[x] = y
        return y
    }
}

for i in 1 ..< nodes.count {
    print("\(i)의 부모 노드:", find(i))
}

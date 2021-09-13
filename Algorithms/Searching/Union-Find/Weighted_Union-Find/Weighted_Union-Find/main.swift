//
//  main.swift
//  Weighted_Union-Find
//
//  Created by Jmy on 2021/09/12.
//

let nodes: [Int] = (0 ... 7).map { $0 }
let edges: [[Int]] = [[1, 2], [2, 3], [1, 5], [5, 2], [5, 6], [4, 7]]

var parents: [Int] = nodes

for i in 0 ..< nodes.count {
    makeSet(i)
}

for edge in edges {
    var (x, y) = (edge[0], edge[1])
    weightedUnion(&x, &y)
}

func makeSet(_ x: Int) {
    parents[x] = -1
}

func weightedUnion(_ x: inout Int, _ y: inout Int) {
    x = weightedFind(x)
    y = weightedFind(y)
    
    if x == y {
        return
    }
    
    // parent[x], parent[y] 값은 음수이므로 값이 작은 경우가 더 높이가 큰 노드이다.
    if parents[x] > parents[y] {
        parents[y] += parents[x]
        parents[x] = y
    } else {
        parents[x] += parents[y]
        parents[y] = x
    }
}

func weightedFind(_ x: Int) -> Int {
    if parents[x] < 0 {
        return x
    } else {
        let y = weightedFind(parents[x])
        parents[x] = y
        return y
    }
}

for i in 1 ..< nodes.count {
    print("\(i)의 부모 노드:", weightedFind(i))
}

// 1의 부모 노드: 1
// 2의 부모 노드: 1
// 3의 부모 노드: 1
// 4의 부모 노드: 4
// 5의 부모 노드: 1
// 6의 부모 노드: 1
// 7의 부모 노드: 4

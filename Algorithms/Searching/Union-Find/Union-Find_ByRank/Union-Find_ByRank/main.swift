//
//  main.swift
//  Union-Find_ByRank
//
//  Created by Jmy on 2021/09/12.
//

let nodes: [Int] = (0 ... 7).map { $0 }
let edges: [[Int]] = [[1, 2], [2, 3], [1, 5], [5, 2], [5, 6], [4, 7]]

var parents: [Int] = nodes
var ranks: [Int] = nodes

/// 높이가 더 높은 트리가 높이가 낮은 트리 밑으로 들어가게 되면 트리가 점점 깊어질 위험이 있습니다.
/// 따라서 트리의 높이가 낮은 트리가 높은 트리 밑으로 들어가야 하는데 이를 위해서는 트리의 높이를 기록해두어야 합니다.
/// 트리의 높이를 기억하는 rank 라는 배열을 선언하고 초기화 해줍니다.

for i in 0 ..< nodes.count {
    makeSet(i)
}

for edge in edges {
    var (x, y) = (edge[0], edge[1])
    unionByRank(&x, &y)
}

func makeSet(_ x: Int) {
    parents[x] = x
    ranks[x] = 0 // 꼭 0이 아니어도 됨.
}

/// union할 시 크기를 비교해주고 합쳐줄 경우에는 크기를 갱신해주어야합니다.
func unionByRank(_ x: inout Int, _ y: inout Int) {
    x = find(x)
    y = find(y)
    
    if x == y {
        return
    }
    
    if ranks[x] < ranks[y] {
        parents[x] = y
    } else {
        parents[y] = x
    }

    if ranks[x] == ranks[y] {
        ranks[x] += 1
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

// 1의 부모 노드: 1
// 2의 부모 노드: 1
// 3의 부모 노드: 1
// 4의 부모 노드: 4
// 5의 부모 노드: 1
// 6의 부모 노드: 1
// 7의 부모 노드: 4

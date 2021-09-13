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
//    union(edge[0], edge[1])
    var (x, y) = (edge[0], edge[1])
    union(&x, &y)
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

/// 한 쪽으로만 치우쳐진 사향트리(Skewed Tree, 편향트리)의 경우
/// 루트노드를 찾는데 O(N)의 시간복잡도가 걸립니다.
func find(x: Int) -> Int {
    if parents[x] == x {
        return x
    } else {
        return find(parents[x])
    }
}

/// 재귀함수를 사용하여 부모 노드를 찾아 저장해두면
/// 다음 검색 시에는 빠르게 찾을 수 있습니다.
/// - 경로 압축(Path Compression)
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

//
//  2562.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/09.
//

/**
 - 제목: 최댓값
 - 문제: 9개의 서로 다른 자연수가 주어질 때, 이들 중 최댓값을 찾고 그 최댓값이 몇 번째 수인지를 구하는 프로그램을 작성하시오.
 예를 들어, 서로 다른 9개의 자연수 3, 29, 38, 12, 57, 74, 40, 85, 61 이 주어지면, 이들 중 최댓값은 85이고, 이 값은 8번째 수이다.
 - 입력: 첫째 줄부터 아홉 번째 줄까지 한 줄에 하나의 자연수가 주어진다. 주어지는 자연수는 100 보다 작다.
 - 출력: 첫째 줄에 최댓값을 출력하고, 둘째 줄에 최댓값이 몇 번째 수인지를 출력한다.
 - 원문: https://www.acmicpc.net/problem/2562
 */

class Problem_2562 {
  func solution_1() {
    var nums :[Int] = []
    
    for _ in 1...9 {
      let a = Int(readLine()!)!
      nums.append(a)
    }
    
    for i in 0...8 {
      if nums[i] == nums.max()! {
        print(nums.max()!)
        print(i+1)
      }
    }
  }
  func solution_2() {
    var arr: [Int] = []
    
    for _ in 1 ... 9 {
      let n = Int(readLine()!)!
      arr.append(n)
    }
    let maxNum = arr.max()!
    print(maxNum)
    
    for (index, value) in arr.enumerated() {
      if value == maxNum {
        print(index+1)
      }
    }
  }
  func solution_3() {
    var n:[Int]=[];for _ in 1...9{n.append(Int(readLine()!)!)};let m=n.max()!;for i in 0...8{if n[i]==m{print("\(m)\n\(i+1)")}}
  }
  func solution_4() {
    var n:[Int]=[];for _ in 1...9{n.append(Int(readLine()!)!)};for i in 0...8{if n[i]==n.max()!{print("\(n.max()!)\n\(i+1)")}}
  }
  func solution_5() {
    var n:[Int]=[];for _ in 1...9{n.append(Int(readLine()!)!)};for i in 0...8{if n[i]==n.max()!{print(n.max()!);print(i+1)}}
  }
  func solution_6() {
    var n:[Int]=[];for _ in 1...9{n.append(Int(readLine()!)!)};print("\(n.max()!)\n\(n.indices.filter{n[$0]==n.max()!}[0]+1)")
  }
  func solution_7() {
    var n:[Int]=[];for _ in 1...9{n.append(Int(readLine()!)!)};print(n.max()!,"\n\(n.indices.filter{n[$0]==n.max()!}[0]+1)")
  }
  func solution_8() {
    var n:[Int]=[];for _ in 1...9{n.append(Int(readLine()!)!)};print(n.max()!);print(n.indices.filter{n[$0]==n.max()!}[0]+1)
  }
  func solution_9() {
    var n:[Int]=[];for _ in 1...9{n.append(Int(readLine()!)!)};[n.max()!,n.indices.filter{n[$0]==n.max()!}[0]+1].map{print($0)}
  }
  func solution_10() {
    var n:[Int]=[],l=0;for i in 1...9{let a=Int(readLine()!)!;n.append(a);if a==n.max()!{l=i}};print(n.max()!);print(l)
  }
  func solution_11() {
    var n=[0],l=0;for i in 1...9{let a=Int(readLine()!)!;n.append(a);if a==n.max()!{l=i}};print(n.max()!);print(l)
  }
  func solution_12() {
    var a=[0];for _ in 1...9{a.append(Int(readLine()!)!)};print(a.max()!);print(a.firstIndex(of:a.max()!)!)
  }
  func solution_13() {
    var a=[0];while let b=readLine(){a.append(Int(b)!)};let v=a.max()!;print(v);print(a.firstIndex(of:v)!)
  }
  func solution_14() {
    var a=[0];while let b=readLine(){a.append(Int(b)!)};print(a.max()!);print(a.firstIndex(of:a.max()!)!)
  }
  /// https://www.acmicpc.net/short/status/2562/74/1
  /// 1등
  func solution_zzimss() {
    var a=[0];while let b=readLine(){a+=[Int(b)!]};print(a.max()!);print(a.firstIndex(of:a.max()!)!)
  }
}

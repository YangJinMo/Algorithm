//
//  10250.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/08/10.
//

/**
 - 제목: ACM 호텔
 - 원문: https://www.acmicpc.net/problem/10250
 */

class Problem_10250 {
  func solution_1() {
    let T = Int(readLine()!)!
    
    for _ in 1...T {
      let line = readLine()!.split{$0==" "}.map{Int($0)!}
      let H = line[0]
      //let W = line[1]
      let N = line[2]
      
      let a = N % H
      let b = N / H
      
      if a == 0 {
        if b >= 10 {
          print("\(H)\(b)")
        } else {
          print("\(H)0\(b)")
        }
      } else {
        if (b + 1) >= 10 {
          print("\(a)\(b + 1)")
        } else {
          print("\(a)0\(b + 1)")
        }
      }
      
      //print("\(N%H == 0 ? H : N%H)\(N/H+1 > 10 ? "" : "0")\(N/H+1)")
    }
  }
  func solution_2() {
    for _ in 1...Int(readLine()!)! {
      let l = readLine()!.split{$0==" "}.map{Int($0)!}
      let H = l[0]
      let N = l[2]
      var a = N % H
      var b = N / H
      
      if a > 0 {
        b += 1
      } else {
        a = H
      }
      
      if b > 9 {
        print("\(a)\(b)")
      } else {
        print("\(a)0\(b)")
      }
    }
  }
  func solution_3() {
    for _ in 1...Int(readLine()!)!{var l=readLine()!.split{$0==" "}.map{Int($0)!},H=l[0],N=l[2],a=N%H,b=N/H;if a>0{b+=1}else{a=H};if b>9{print("\(a)\(b)")}else{print("\(a)0\(b)")}}
  }
  func solution_4() {
    for _ in 1...Int(readLine()!)!{var l=readLine()!.split{$0==" "},H=Int(l[0])!,N=Int(l[2])!,a=N%H,b=N/H;if a>0{b+=1}else{a=H};if b>9{print("\(a)\(b)")}else{print("\(a)0\(b)")}}
  }
  func solution_5() {
    for _ in 1...Int(readLine()!)!{var l=readLine()!.split{$0==" "},H=Int(l[0])!,N=Int(l[2])!,a=N%H,b=N/H;if a>0{b+=1}else{a=H};print("\(a)\(b>9 ?"":"0")\(b)")}
  }
  func solution_6() {
    for _ in 1...Int(readLine()!)!{let l=readLine()!.split{$0==" "},H=Int(l[0])!,N=Int(l[2])!,a=N%H>0 ?N%H:H,b=N/H+(a>0 ?1:0);print("\(a)\(b>9 ?"":"0")\(b)")}
  }
  func solution_7() {
    for _ in 1...Int(readLine()!)!{let l=readLine()!.split{$0==" "},H=Int(l[0])!,N=Int(l[2])!,a=N%H>0 ?N%H:H,b=N/H+(N%H>0 ?1:0);print("\(a)\(b>9 ?"":"0")\(b)")}
  }
  func solution_8() {
    for _ in 1...Int(readLine()!)!{let l=readLine()!.split{$0==" "},H=Int(l[0])!,N=Int(l[2])!,a=N%H>0 ?N%H:H,b=N/H+(H>a ?1:0);print("\(a)\(b>9 ?"":"0")\(b)")}
  }
  /// https://www.acmicpc.net/short/status/10250/74/1
  /// 1등
  func solution_zzimss() {
    for _ in 1...Int(readLine()!)!{let l=readLine()!.split{$0==" "},H=Int(l[0])!,N=Int(l[2])!,a=N%H,b=N/H+(a>0 ?1:0);print("\(a>0 ?a:H)\(b>9 ?"":"0")\(b)")}
  }
}

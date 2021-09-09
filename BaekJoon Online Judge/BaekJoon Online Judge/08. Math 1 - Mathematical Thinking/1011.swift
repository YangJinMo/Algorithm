//
//  1011.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/08/16.
//

/**
 - 제목: Fly me to the Alpha Centauri
 - 문제: 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
 - 입력: 입력의 첫 줄에는 테스트케이스의 개수 T가 주어진다. 각각의 테스트 케이스에 대해 현재 위치 x 와 목표 위치 y 가 정수로 주어지며, x는 항상 y보다 작은 값을 갖는다. (0 ≤ x `<` y `<` 231)
 - 출력: 각 테스트 케이스에 대해 x지점으로부터 y지점까지 정확히 도달하는데 필요한 최소한의 공간이동 장치 작동 횟수를 출력한다.
 - 원문: https://www.acmicpc.net/problem/1011
 */

// 1 1 1
// 2 2 11
// 3 3 111
// 4 3 121
// 5 4 1211
// 6 4 1221
// 7 5 12121
// 8 5 12221
// 9 5 12321
//10 6 123211, 122221

class Problem_1011 {
    func solution_1_1() {
        let T = Int(readLine()!)!
        
        for _ in 1...T {
            let arrInt = readLine()!.split(separator: " ").map { Int($0)! }
            var distance = arrInt[1] - arrInt[0] // 이동 거리
            var k = 1 // 광년
            var i = 0 // 이동 장치 작동 횟수의 최솟값
            
            while distance > 0 {
                distance -= k
                i += 1
                
                if distance > 0 {
                    distance -= k
                    i += 1
                    
                    if distance == 1 {
                        i += 1
                        break
                    } else {
                        k += 1
                    }
                }
            }
            print(i, k)
        }
    }
    func solution_1_2() {
        for _ in 1...Int(readLine()!)!{var l=readLine()!.split{$0==" "},d=Int(l[1])!-Int(l[0])!,k=1,i=0;while d>0{d-=k;i+=1;if d>0{d-=k;i+=1;if d==1{i+=1;break}else{k+=1}}};print(i)}
    }
    func solution_1_3() {
        for _ in 1...Int(readLine()!)!{var d=readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0){$1-$0},k=1,i=0;while d>0{d-=k;i+=1;if d>0{d-=k;i+=1;if d==1{i+=1;break}else{k+=1}}};print(i)}
    }
    func solution_1_4() {
        for _ in 1...Int(readLine()!)! {
            let arrInt = readLine()!.split(separator: " ").map { Int($0)! }
            var distance = arrInt[1] - arrInt[0] // 이동 거리
            var k = 1 // 광년
            var i = 0 // 이동 장치 작동 횟수의 최솟값
            
            while distance > 0 {
                distance -= k
                i += 1
                
                if distance > 0 {
                    distance -= k
                    i += 1
                    
                    if distance == 1 {
                        i += 1
                        break
                    } else {
                        k += 1
                    }
                }
            }
            print(i, k)
        }
    }
    /// 원리가 뭘까?
    func solution_2_1() {
        for _ in 1...Int(readLine()!)! {
            let end = readLine()!.split{$0==" "}.map{Int($0)!}.reduce(0){-$0-$1}*(-1)*4
            var k = 1, i = 1
            
            while k < end {
                i += 1
                k = (i + 1) * (i + 1)
            }
            print(i)
        }
    }
    func solution_2_2() {
        for _ in 1...Int(readLine()!)!{var l=readLine()!.split{$0==" "},d=(Int(l[1])!-Int(l[0])!)*4,k=1,i=1;while k<d{i+=1;k=i*i};print(i-1)}
    }
    func solution_3() {
        for _ in 1...Int(readLine()!)! {
            let l=readLine()!.split{$0==" "},d=Int(l[1])!-Int(l[0])!
            
            for i in 1... {
                let v = i%2 == 0 ? ((i/2)*(i/2+1)) : ((i/2)*(i/2+1))/2 + ((i/2+1)*(i/2+2))/2
                if d <= v {
                    print(i)
                    break
                }
            }
        }
    }
    func solution_4() {
        for _ in 1...Int(readLine()!)! {
            var l=readLine()!.split{$0==" "},d=Int(l[1])!-Int(l[0])!,k=1,i=1
            
            while true {
                if d <= k*k {
                    if k*k-k < d {
                        i = 2*k-1
                    } else {
                        i = 2*(k-1)
                    }
                    break
                }
                k += 1
            }
            print(i)
        }
    }
    func solution_5_1() {
        for _ in 1...Int(readLine()!)! {
            let l=readLine()!.split{$0==" "},d=Int(l[1])!-Int(l[0])!
            var k = 1
            var i = 1
            var e = 1
            
            while d > e {
                e += k
                i += 1
                
                if i % 2 == 0 {
                    k += 1
                }
            }
            print(i)
        }
    }
    func solution_5_2() {
        for _ in 1...Int(readLine()!)! {
            var l=readLine()!.split{$0==" "},d=Int(l[1])!-Int(l[0])!
            var k = 1
            var i = 1
            
            while d > 1 {
                d -= k
                i += 1
                
                if i % 2 == 0 {
                    k += 1
                }
            }
            print(i)
        }
    }
    func solution_5_3() {
        for _ in 1...Int(readLine()!)!{var l=readLine()!.split{$0==" "},d=Int(l[1])!-Int(l[0])!,k=1,i=1,e=1;while d>e{e+=k;i+=1;if i%2==0{k+=1}};print(i)}
    }
    func solution_5_4() {
        for _ in 1...Int(readLine()!)!{var l=readLine()!.split{$0==" "},d=Int(l[1])!-Int(l[0])!,k=1,i=1;while d>1{d-=k;i+=1;if i%2==0{k+=1}};print(i)}
    }
    /// https://www.acmicpc.net/short/status/1011/74/1
    /// 1등
    func solution_zzimss() {
        for _ in 1...Int(readLine()!)!{var l=readLine()!.split{$0==" "},d=Int(l[1])!-Int(l[0])!,k=1,i=1;while d>1{d-=k;i+=1;if i%2==0{k+=1}};print(i)}
    }
}

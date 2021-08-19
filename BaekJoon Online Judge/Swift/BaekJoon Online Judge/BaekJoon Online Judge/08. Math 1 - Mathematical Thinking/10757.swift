//
//  10757.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/08/13.
//

/**
 - 제목: 큰 수 A+B
 - 문제: 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 A와 B가 주어진다. (0 `<` A,B `<` 10^10000)
 - 출력: 첫째 줄에 A+B를 출력한다.
 - 원문: https://www.acmicpc.net/problem/10757
 */

class Problem_10757 {
  func solution_1() {
    let line = "9223372036854775807 9223372036854775808"
    let arr = line.split(separator: " ").map(String.init) //readLine()!.split(separator: " ")
    let a = arr[0] // readLine()!
    let b = arr[1] // readLine()!
    
    print(a.endIndex)
    print(a[a.startIndex])
    
    print("test1", a[a.index(before: a.endIndex)])
    print("test2", a[a.index(a.endIndex, offsetBy: -1)])
    
    for i in 1...a.count {
        let A = Int(String(a[a.index(a.endIndex, offsetBy: -i)])) ?? 0
        let B = Int(String(b[b.index(b.endIndex, offsetBy: -i)])) ?? 0
        print(A + B)
        //print("test3", a[a.index(a.endIndex, offsetBy: -i)])
    }
  }
  func solution_2() {
    
  }
  func solution_3() {
    
  }
  func solution_4() {
    
  }
  func solution_5() {
    
  }
  func solution_6() {
    
  }
  /// https://www.acmicpc.net/short/status/10757/74/1
  /// 등
  func solution_zzimss() {
    
  }
}
extension String {
    
    // let str = "aBcDeF"
    // print(str[3]) // D
    subscript(_ index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
    
    // let name = "Marie Curie"
    // let firstSpace = name.firstIndex(of: " ") ?? name.endIndex
    // let firstName = name[..<firstSpace]
    // print(firstName) // Marie
    subscript(_ range: Range<Int>) -> String {
        let fromIndex = self.index(self.startIndex, offsetBy: range.startIndex)
        let toIndex = self.index(self.startIndex,offsetBy: range.endIndex)
        return String(self[fromIndex..<toIndex])
    }
}
extension Array {
    
    // ~= 연산자
    // 대상이 특정 범위에 속하는지 범위를 체크하는 연산자 입니다.
    subscript(safe index: Int) -> Element? {
        // iOS 9 or later
        return indices ~= index ? self[index] : nil
        // iOS 8 or earlier
        // return startIndex <= index && index < endIndex ? self[index] : nil
        // return 0 <= index && index < self.count ? self[index] : nil
    }
}


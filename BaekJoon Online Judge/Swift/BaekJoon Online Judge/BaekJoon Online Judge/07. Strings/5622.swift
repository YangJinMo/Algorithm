//
//  5622.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/07/31.
//

/**
 - 제목: 다이얼
 - 문제: 전화를 걸고 싶은 번호가 있다면, 숫자를 하나를 누른 다음에 금속 핀이 있는 곳 까지 시계방향으로 돌려야 한다. 숫자를 하나 누르면 다이얼이 처음 위치로 돌아가고,
       다음 숫자를 누르려면 다이얼을 처음 위치에서 다시 돌려야 한다.
       숫자 1을 걸려면 총 2초가 필요하다. 1보다 큰 수를 거는데 걸리는 시간은 이보다 더 걸리며, 한 칸 옆에 있는 숫자를 걸기 위해선 1초씩 더 걸린다.
       상근이의 할머니는 전화 번호를 각 숫자에 해당하는 문자로 외운다. 즉, 어떤 단어를 걸 때, 각 알파벳에 해당하는 숫자를 걸면 된다. 예를 들어, UNUCIC는 868242와 같다.
       할머니가 외운 단어가 주어졌을 때, 이 전화를 걸기 위해서 필요한 최소 시간을 구하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 알파벳 대문자로 이루어진 단어가 주어진다. 단어의 길이는 2보다 크거나 같고, 15보다 작거나 같다.
 - 출력: 첫째 줄에 다이얼을 걸기 위해서 필요한 최소 시간을 출력한다.
 - 원문: https://www.acmicpc.net/problem/5622
 */

class Problem_5622 {
  func solution_1() {
    let line = readLine()!
    var result = 0
    
    for s in line {
      if s == "A" || s == "B" || s == "C" {
        result += 3
      } else if s == "D" || s == "E" || s == "F" {
        result += 4
      } else if s == "G" || s == "H" || s == "I" {
        result += 5
      } else if s == "J" || s == "K" || s == "L" {
        result += 6
      } else if s == "M" || s == "N" || s == "O" {
        result += 7
      } else if s == "P" || s == "Q" || s == "R" || s == "S" {
        result += 8
      } else if s == "T" || s == "U" || s == "V" {
        result += 9
      } else if s == "W" || s == "X" || s == "Y" || s == "Z" {
        result += 10
      }
    }
    print(result)
  }
  func solution_2() {
    let line = readLine()!
    var result = 0
    
    for s in line {
      switch s {
      case "A", "B", "C":
        result += 3
      case "D", "E", "F":
        result += 4
      case "G", "H", "I":
        result += 5
      case "J", "K", "L":
        result += 6
      case "M", "N", "O":
        result += 7
      case "P", "Q", "R", "S":
        result += 8
      case "T", "U", "V":
        result += 9
      case "W", "X", "Y", "Z":
        result += 10
      default:
        break
      }
    }
    print(result)
  }
  func solution_3() {
    let line = readLine()!
    var result = 0
    
    for s in line {
      switch s.asciiValue! {
      case 65...67:
        result += 3
      case 68...70:
        result += 4
      case 71...73:
        result += 5
      case 74...76:
        result += 6
      case 77...79:
        result += 7
      case 80...83:
        result += 8
      case 84...86:
        result += 9
      case 87...90:
        result += 10
      default:
        break
      }
    }
    print(result)
  }
  func solution_4() {
    var r=0
    
    for s in readLine()! {
      switch s.asciiValue! {
      case 65...67:r+=3
      case 68...70:r+=4
      case 71...73:r+=5
      case 74...76:r+=6
      case 77...79:r+=7
      case 80...83:r+=8
      case 84...86:r+=9
      case 87...90:r+=10
      default:break
      }
    }
    print(r)
  }
  func solution_5() {
    var time = 0
    let dial = ["ABC", "DEF", "GHI", "JKL", "MNO", "PQRS", "TUV", "WXYZ"]
    for c in Array(readLine()!) {
      for (i, d) in dial.enumerated() {
        if d.contains(c) {
          time += (i + 3)
        }
      }
    }
    print(time)
  }
  func solution_6() {
    var t=0;for c in readLine()!{for(i,d)in["ABC","DEF","GHI","JKL","MNO","PQRS","TUV","WXYZ"].enumerated(){if d.contains(c){t+=i+3}}};print(t)
  }
  func solution_7() {
    let items = ["ABC","DEF","GHI","JKL","MNO","PQRS","TUV","WXYZ"]
    print(readLine()!.map{l in items.indices.filter{items[$0].contains(l)}.reduce(3,+)}.reduce(0,+))
  }
  func solution_8() {
    let letters = ["", "", "", "ABC", "DEF", "GHI", "JKL", "MNO", "PQRS", "TUV", "WXYZ"]
    var time = 0
    
    readLine()!.forEach {
      for i in 0..<letters.count {
        if letters[i].contains($0) {
          time += i
        }
      }
    }
    print(time)
  }
  func solution_9() {
    let n=[65,68,71,74,77,80,84,87]
    var a=0
    
    readLine()!.map { UnicodeScalar(String($0))!.value }.forEach {
      for j in 0..<n.count {
        if n[j] > $0 {
          a += 2+j
          break
        }
      }
      if $0 >= 87 {
        a += 10
      }
    }
    print(a)
  }
  /// https://www.acmicpc.net/short/status/5622/74/1
  /// 1등
  func solution_zzimss() {
    print(readLine()!.reduce(0){$0+[3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,8,9,9,9,10,10,10,10][Int($1.asciiValue!)-65]})
  }
}

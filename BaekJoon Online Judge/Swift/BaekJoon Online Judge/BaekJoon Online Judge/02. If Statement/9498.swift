//
//  9498.swift
//  BaekJoon Online Judge
//
//  Created by Jmy on 2021/06/20.
//

/**
 - 제목: 시험 성적
 - 문제: 시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.
 - 입력: 첫째 줄에 시험 점수가 주어진다. 시험 점수는 0보다 크거나 같고, 100보다 작거나 같은 정수이다.
 - 출력: 시험 성적을 출력한다.
 - 원문: https://www.acmicpc.net/problem/9498
 */

class Problem_9498 {
  func solution_1() {
    switch Int(readLine()!)! {
    case 90...100:
      print("A")
    case 80...89:
      print("B")
    case 70...79:
      print("C")
    case 60...69:
      print("D")
    case 0...59:
      print("F")
    default:
      print("The test score is an integer greater than or equal to 0 and less than or equal to 100.")
    }
  }
  func solution_2() {
    switch Int(readLine()!)! {
    case 90...100:print("A")
    case 80...89:print("B")
    case 70...79:print("C")
    case 60...69:print("D")
    default:print("F")
    }
  }
  func solution_3() {
    let n=Int(readLine()!)!;
    var c:Character="A";
    if(n<60){c="F";}
    else if(n<70){c="D";}
    else if(n<80){c="C";}
    else if(n<90){c="B";};
    print(c)
    // let n=Int(readLine()!)!;var c:Character="A";if(n<60){c="F";}else if(n<70){c="D";}else if(n<80){c="C";}else if(n<90){c="B";};print(c)
  }
  func solution_4() {
    var n=Int(readLine()!)!,c=65;
    if(n<90){c+=1;}
    if(n<80){c+=1;}
    if(n<70){c+=1;}
    if(n<60){c+=2;};
    print(UnicodeScalar(c)!)
    // var n=Int(readLine()!)!,c=65;if(n<90){c+=1;};if(n<80){c+=1;};if(n<70){c+=1;};if(n<60){c+=2;};print(UnicodeScalar(c)!)
  }
  /// https://www.acmicpc.net/short/status/9498/74/1
  /// 2등
  func solution_zzimss() {
    let l=Int(readLine()!)!;print(UnicodeScalar(l>89 ?65:l>79 ?66:l>69 ?67:l>59 ?68:70)!)
  }
  func solution_wapas() {
    let l=Int(readLine()!)!;print(l>89 ?"A":l>79 ?"B":l>69 ?"C":l>59 ?"D":"F")
  }
}

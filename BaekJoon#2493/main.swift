//
//  main.swift
//  BaekJoon#2493
//
//  Created by 김병엽 on 2023/03/24.
//

import Foundation

func solution() {
    
    let n = Int(readLine()!)!
    let top = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    var stack = [Int]()
    var ans = Array(repeating: 0, count: n)
    
    for i in stride(from: n - 1, to: -1, by: -1) {
        while !stack.isEmpty && top[i] > top[stack.last!] {
            let idx = stack.removeLast()
            ans[idx] = i + 1
        }
        stack.append(i)
    }
    
    print(ans.map { String($0) }.joined(separator: " "))
}

solution()

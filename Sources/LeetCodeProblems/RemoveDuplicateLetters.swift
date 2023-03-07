// 316. Remove Duplicate Letters
// https://leetcode.com/problems/remove-duplicate-letters
// Medium

import Foundation

class RemoveDuplicateLetters {
    func removeDuplicateLetters(_ s: String) -> String {
        var last = [Character: Int]()
        for (i, c) in s.enumerated() {
            last[c] = i
        }
        
        var stack = [Character]()
        var visited = Set<Character>()
        let arr = Array(s)
        for i in 0..<arr.count {
            while let tail = stack.last, !visited.contains(arr[i]), tail.asciiValue! > arr[i].asciiValue!, last[tail]! > i {
                visited.remove(tail)
                _ = stack.popLast()
            }
            
            if !visited.contains(arr[i]) {
                visited.insert(arr[i])
                stack.append(arr[i])
            }
        }
        
        return stack.map(String.init).joined()
    }
}

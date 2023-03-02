// 1112. Find Words That Can Be Formed by Characters
// https://leetcode.com/problems/find-words-that-can-be-formed-by-characters
// Easy

import Foundation

public class FindWordsThatCanBeFormedByCharacters {
    public init() {}

    public func countCharacters(_ words: [String], _ chars: String) -> Int {
        var count = 0
        for word in words {
            if canMake(word: word, from: Array(chars)) {
                count += word.count
            }
        }
        return count
    }
    
    private func canMake(word: String, from: [Character]) -> Bool {
        if word.isEmpty { return true }
        var from = from
        let letter = word.first!
        for (i, c) in from.enumerated() {
            if c == letter {
                from.remove(at: i)
                return canMake(word: String(word.dropFirst()), from: from)
            }
        }
        return false
    }
}

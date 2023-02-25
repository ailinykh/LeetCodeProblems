// 3. Longest Substring Without Repeating Characters
// https://leetcode.com/problems/longest-substring-without-repeating-characters
// Medium

import Foundation

public final class LongestSubstringWithoutRepeatingCharacters {
    public init() {}
    
    public func lengthOfLongestSubstring(_ s: String) -> Int {
        var result = 0
        var set = Set<Character>()
        var start = 0
        for c in s {
            while set.contains(c) {
                set.remove(s[s.index(s.startIndex, offsetBy: start)])
                start += 1
            }
            set.insert(c)
            result = max(result, set.count)
        }
        return result
    }
}

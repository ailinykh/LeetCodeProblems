// 392. Is Subsequence
// https://leetcode.com/problems/is-subsequence
// Easy

import Foundation

public final class IsSubsequence {
    public init() {}
    
    public func isSubsequence(_ s: String, _ t: String) -> Bool {
        var position = 0
        for c in t {
            if position < s.count && c == s[s.index(s.startIndex, offsetBy: position)] {
                position += 1
            }
        }
        return position == s.count
    }
}

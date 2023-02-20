// 58. Length of Last Word
// https://leetcode.com/problems/length-of-last-word

import Foundation

public final class LengthOfLastWord {
    public init() {}
    
    public func lengthOfLastWord(_ s: String) -> Int {
        var n = 0
        for c in s.reversed() {
            if c == " " && n == 0 {
                continue
            }
            if c == " " {
                return n
            }
            n = n + 1
        }
        return n
    }
}

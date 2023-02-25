// 748. Largest Number At Least Twice of Others
// https://leetcode.com/problems/largest-number-at-least-twice-of-others
// Easy

import Foundation

public final class LargestNumberAtLeastTwiceOfOthers {
    public init() {}
    
    public func dominantIndex(_ nums: [Int]) -> Int {
        var f = nums[0], s = nums[0], k = 0
        for (i, e) in nums.enumerated() {
            if e > f {
                s = f
                f = e
                k = i
            } else if s == f || e > s {
                s = e
            }
        }
        if s == 0 {
            return f > 0 ? k : -1
        }
        return f / s >= 2 ? k : -1
    }
}

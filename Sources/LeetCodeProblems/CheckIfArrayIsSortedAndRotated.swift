// 1878. Check if Array Is Sorted and Rotated
// https://leetcode.com/problems/check-if-array-is-sorted-and-rotated
// Easy

import Foundation

public final class CheckIfArrayIsSortedAndRotated {
    public init() {}
    
    public func check(_ nums: [Int]) -> Bool {
        var found = false
        for (i, e) in nums.enumerated() {
            if i > 0 && e < nums[i-1] {
                if found {
                    return false
                }
                found = true
            }
        }
        return found ? nums[0] >= nums[nums.count - 1] : nums[0] <= nums[nums.count - 1]
    }
}

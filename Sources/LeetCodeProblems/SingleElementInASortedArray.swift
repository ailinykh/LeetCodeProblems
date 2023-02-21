// 540. Single Element in a Sorted Array
// https://leetcode.com/problems/single-element-in-a-sorted-array
// medium

import Foundation

public final class SingleElementInASortedArray {
    public init() {}
    
    public func singleNonDuplicate(_ nums: [Int]) -> Int {
        var l = 0, r = nums.count - 1
        while l <= r {
            let n = (r - l) / 2 + l
            
            if (n == 0 || nums[n] != nums[n-1]) &&
                (n == nums.count - 1 || nums[n] != nums[n+1]) {
                return nums[n]
            }
            
            let left = (n == 0 || nums[n-1] == nums[n]) ? n - 1 : n
            
            if left % 2 == 0 {
                l = n + 1
            } else {
                r = n - 1
            }
        }
        return 0
    }
}

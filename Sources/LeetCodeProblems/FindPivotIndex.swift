// 724. Find Pivot Index
// https://leetcode.com/problems/find-pivot-index
// Easy

import Foundation

public class FindPivotIndex {
    public init() {}
    
    public func pivotIndex(_ nums: [Int]) -> Int {
        let sum = nums.reduce(0, +)
        var left = 0
        for i in 0..<nums.count {
            if i > 0 {
                left += nums[i-1]
            }
            
            if sum - nums[i] - left == left {
                return i
            }
        }
        return -1
    }
}

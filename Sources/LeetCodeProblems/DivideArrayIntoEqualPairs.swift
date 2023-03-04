// 2308. Divide Array Into Equal Pairs
// https://leetcode.com/problems/divide-array-into-equal-pairs
// Easy

import Foundation

public class DivideArrayIntoEqualPairs {
    public init() {}
    
    public func divideArray(_ nums: [Int]) -> Bool {
        let nums = nums.sorted()
        var prev = nums[0]
        // [2,2,2,2,3,3,3,3,4,4,4,4]
        // [0,1,2,3,4,5,6,7,8,9,10,11]
        for i in 1..<nums.count {
            if nums[i] != prev && i % 2 != 0 {
                return false
            }
            prev = nums[i]
        }
        return true
    }
}

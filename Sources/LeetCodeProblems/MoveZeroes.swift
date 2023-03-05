// 283. Move Zeroes
// https://leetcode.com/problems/move-zeroes
// Easy

import Foundation

public class MoveZeroes {
    public init() {}
    
    public func moveZeroes(_ nums: inout [Int]) {
        var j = 0
        for i in 0..<nums.count {
            if nums[i] == 0 {
                j = max(i + 1, j)
                while j < nums.count && nums[j] == 0 {
                    j += 1
                }
                if j == nums.count { return }
                nums.swapAt(i,j)
            }
        }
    }
}

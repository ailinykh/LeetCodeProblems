// 2159. Two Out of Three
// https://leetcode.com/problems/two-out-of-three
// Easy

import Foundation

public final class TwoOutOfThree {
    public init() {}
    
    public func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
        let count = max(nums1.count, nums2.count, nums3.count)
        var nums = [Int: [Int]]()
        for i in 0..<count {
            if i < nums1.count {
                nums[nums1[i], default: [0,0,0]][0] = 1
            }
            if i < nums2.count {
                nums[nums2[i], default: [0,0,0]][1] = 1
            }
            if i < nums3.count {
                nums[nums3[i], default: [0,0,0]][2] = 1
            }
        }
        var result = [Int]()
        for n in nums.keys {
            if let values = nums[n], values.filter({ $0 == 1 }).count > 1 {
                result.append(n)
            }
        }
        return result
    }
}

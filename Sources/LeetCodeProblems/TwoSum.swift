// 1. Two Sum
// https://leetcode.com/problems/two-sum

import Foundation

public class TwoSum {
    public init() {}

    public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (i, n) in nums.enumerated() {
            if let j = dict[target - n] {
                return [j, i]
            }
            dict[n] = i
        }
        return []
    }
}
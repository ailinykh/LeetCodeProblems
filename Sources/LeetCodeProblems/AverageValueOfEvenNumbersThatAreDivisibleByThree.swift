// 2542. Average Value of Even Numbers That Are Divisible by Three
// https://leetcode.com/problems/average-value-of-even-numbers-that-are-divisible-by-three
// Easy

import Foundation

public class AverageValueOfEvenNumbersThatAreDivisibleByThree {
    public init() {}
    
    public func averageValue(_ nums: [Int]) -> Int {
        var sum = 0, count = 0
        for i in nums {
            if i % 6 == 0 {
                count += 1
                sum += i
            }
        }
        return count == 0 ? 0 : sum / count
    }
}

// 1476. Count Negative Numbers in a Sorted Matrix
// https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix
// Easy

import Foundation

class CountNegativeNumbersInASortedMatrix {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var count = 0
        for arr in grid {
            var i = 0, b = 0, t = arr.count - 1
            repeat {
                if arr[i] >= 0 {
                    b = i
                } else {
                    t = i
                }
                i = (t - b) / 2 + b
            } while b < t - 1
            if arr[t] < 0 {
                count += arr.count - t
            }
        }
        return count
    }
}

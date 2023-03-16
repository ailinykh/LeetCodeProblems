// 56. Merge Intervals
// https://leetcode.com/problems/merge-intervals
// Medium

import Foundation

class MergeIntervals {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        // O(N logN) O(N)
        let intervals = intervals.sorted(by: { $0[0] < $1[0] })
        var result = [[Int]]([intervals[0]])
        for i in 1..<intervals.count {
            if result.last![1] >= intervals[i][0] {
                var last = result.last!
                last[1] = max(last[1], intervals[i][1])
                result[result.count-1] = last
            } else {
                result.append(intervals[i])
            }
        }
        return result
    }
}

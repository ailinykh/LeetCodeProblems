// 2447. Merge Similar Items
// https://leetcode.com/problems/merge-similar-items
// Easy

import Foundation

public final class MergeSimilarItems {
    public init() {}
    
    public func mergeSimilarItems(_ items1: [[Int]], _ items2: [[Int]]) -> [[Int]] {
        var weights = Array(repeating: 0, count: 1001)
        let maximum = items1.count > items2.count ? items1.count : items2.count
        for i in 0..<maximum {
            if i < items1.count {
                weights[items1[i][0]] += items1[i][1]
            }
            if i < items2.count {
                weights[items2[i][0]] += items2[i][1]
            }
        }
        var result = [[Int]]()
        for (i, e) in weights.enumerated() {
            if e > 0 {
                result.append([i, e])
            }
        }
        return result
    }
}

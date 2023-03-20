// 2163. Kth Distinct String in an Array
// https://leetcode.com/problems/kth-distinct-string-in-an-array
// Easy

import Foundation

class KthDistinctStringInAnArray {
    func kthDistinct(_ arr: [String], _ k: Int) -> String {
        var dict = [String: Int]()
        for s in arr {
            dict[s] = dict[s, default: 0] + 1
        }
        var count = k
        for s in arr {
            if dict[s]! == 1 {
                count -= 1
            }
            if count == 0 {
                return s
            }
        }
        return ""
    }
}

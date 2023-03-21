// 2432. Number of Zero-Filled Subarrays
// https://leetcode.com/problems/number-of-zero-filled-subarrays
// Medium

import Foundation

class NumberOfZeroFilledSubarrays {
        func zeroFilledSubarray(_ nums: [Int]) -> Int {
            // 0 -> 1
            // 0,0 -> 2 + 1 = 3
            // 0,0,0 -> 3 + 2 + 1 = 6
            // 0,0,0,0 -> 4 + 3 + 2 + 1 = 10
            // 0,0,0,0,0 -> 5 + 4 + 3 + 2 + 1 = 15
            // 0,0,0,0,0,0 -> 6 + 5 + 4 + 3 + 2 + 1 = 21
            var i = 0, count = 0
            for n in nums {
                if n == 0 {
                    i += 1
                } else {
                    if i > 0 { count += i * (i + 1) / 2 }
                    i = 0
                }
            }
            if i > 0 { count += i * (i + 1) / 2 }
            return count
        }
}

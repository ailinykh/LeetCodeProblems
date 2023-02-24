// 88. Merge Sorted Array
// https://leetcode.com/problems/merge-sorted-array
// Easy

import Foundation

public final class MergeSortedArray {
    public init() {}
    
    public func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var m = m - 1
        var n = n - 1
        var i = m + n + 1
        while m >= 0 && n >= 0 {
            if nums1[m] > nums2[n] {
                nums1[i] = nums1[m]
                m -= 1
            } else {
                nums1[i] = nums2[n]
                n -= 1
            }
            i -= 1
        }
        while n >= 0 {
            nums1[i] = nums2[n]
            n -= 1
            i -= 1
        }
    }
}

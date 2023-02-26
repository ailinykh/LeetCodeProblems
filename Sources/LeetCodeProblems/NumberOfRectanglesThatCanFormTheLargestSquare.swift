// 1843. Number Of Rectangles That Can Form The Largest Square
// https://leetcode.com/problems/number-of-rectangles-that-can-form-the-largest-square
// Easy

import Foundation

public final class NumberOfRectanglesThatCanFormTheLargestSquare {
    public init() {}
    
    public func countGoodRectangles(_ rectangles: [[Int]]) -> Int {
        var counts = [0: 0]
        var maximum = 0
        for rect in rectangles {
            let minimum = rect[0] < rect[1] ? rect[0] : rect[1]
            counts[minimum] = (counts[minimum] ?? 0) + 1
            if maximum < minimum {
                maximum = minimum
            }
        }
        return counts[maximum] ?? 0
    }
}

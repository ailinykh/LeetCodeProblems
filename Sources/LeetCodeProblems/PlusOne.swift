// 66. Plus One
// https://leetcode.com/problems/plus-one
// Easy

import Foundation

public final class PlusOne {
    public init() {}
    
    public func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var hasPeriod = true
        var i = digits.count
        repeat {
            i -= 1
            var n = digits[i]
            if hasPeriod {
                n += 1
                hasPeriod = false
            }
            if n > 9 {
                digits[i] = n % 10
                hasPeriod = true
            } else {
                digits[i] = n
            }
        } while hasPeriod && i > 0
        
        if hasPeriod {
            digits.insert(1, at: 0)
        }
            
        return digits
    }
}

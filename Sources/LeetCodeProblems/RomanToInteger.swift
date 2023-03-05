// 13. Roman to Integer
// https://leetcode.com/problems/roman-to-integer
// Easy

import Foundation

public class RomanToInteger {
    public init() {}
    
    public func romanToInt(_ s: String) -> Int {
        let nums = Array(s.unicodeScalars)
        var i = 0
        var num = 0
        while i < nums.count {
            switch nums[i] {
            case "M":
                num += 1000
            case "D":
                num += 500
            case "C":
                if i < nums.count - 1 && nums[i+1] == "M" {
                    num += 900
                    i += 1
                } else if i < nums.count - 1 && nums[i+1] == "D" {
                    num += 400
                    i += 1
                } else {
                    num += 100
                }
            case "L":
                num += 50
            case "X":
                if i < nums.count - 1 && nums[i+1] == "C" {
                    num += 90
                    i += 1
                } else if i < nums.count - 1 && nums[i+1] == "L" {
                    num += 40
                    i += 1
                } else {
                    num += 10
                }
            case "V":
                num += 5
            case "I":
                if i < nums.count - 1 && nums[i+1] == "X" {
                    num += 9
                    i += 1
                } else if i < nums.count - 1 && nums[i+1] == "V" {
                    num += 4
                    i += 1
                } else {
                    num += 1
                }
            default:
                break
            }
            i += 1
        }
        return num
    }
}

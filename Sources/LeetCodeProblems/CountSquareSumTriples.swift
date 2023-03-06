// 2037. Count Square Sum Triples
// https://leetcode.com/problems/count-square-sum-triples
// Easy

import Foundation

public class CountSquareSumTriples {
    public init() {}
    
    public func countTriples(_ n: Int) -> Int {
        var count = 0
        for i in 1..<n {
            for j in 1..<n {
                let k = sqrt(Double(i*i + j*j))
                if Int(k) > n { break }
                if ceil(k) == k { count += 1 }
            }
        }
        return count
    }
}

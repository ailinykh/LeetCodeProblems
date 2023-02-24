// 70. Climbing Stairs
// https://leetcode.com/problems/climbing-stairs
// Easy

import Foundation

public final class ClimbingStairs {
    public init() {}
    
    public func climbStairs(_ n: Int) -> Int {
        var one = 1, two = 1
        for _ in 0..<n-1 {
            let tmp = one
            one = two
            two = tmp + two
        }
        return two
    }
}

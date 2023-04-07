// 879. Maximize Distance to Closest Person
// https://leetcode.com/problems/maximize-distance-to-closest-person
// Medium

import Foundation

class MaximizeDistanceToClosestPerson {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        var result = 0
        var index: Int?
        // [0,0,0,1,0,0,0,0,0]
        for i in 0..<seats.count {
            if seats[i] == 1 {
                if index != nil {
                    // [0,0,0,1,0,0,0,0,0,1]
                    let current = (i - index!) / 2
                    result = max(result, current)
                } else {
                    // [0,0,0,1]
                    result = i
                }
                index = i
            }
        }
        // [0,0,0,1,0,0,0,0,0]
        return max(result, seats.count - index! - 1)
    }
}

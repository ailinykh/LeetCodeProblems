// 2367. Minimum Lines to Represent a Line Chart
// https://leetcode.com/problems/minimum-lines-to-represent-a-line-chart
// Medium

import Foundation

class MinimumLinesToRepresentALineChart {
    func minimumLines(_ stockPrices: [[Int]]) -> Int {
            guard stockPrices.count > 1 else { return 0 }
            let sp = stockPrices.sorted { $0[0] < $1[0] }
            var count = 0
            var last: (dx: Int, dy: Int)?
            for i in 1..<sp.count {
                let dx = sp[i][0] - sp[i-1][0]
                let dy = sp[i][1] - sp[i-1][1]
                
                if last == nil || last!.dx * dy != last!.dy * dx {
                    count += 1
                }
                
                last = (dx, dy)
            }
            return count
        }
}

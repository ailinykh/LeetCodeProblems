// 121. Best Time to Buy and Sell Stock
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock
// Easy

import Foundation

public final class BestTimeToBuyAndSellStock {
    public init() {}
    
    public func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        var buy = prices.first ?? 0
        for price in prices {
            if price < buy {
                buy = price
            } else {
                profit = max(profit, price - buy)
            }
        }
        return profit
    }
}

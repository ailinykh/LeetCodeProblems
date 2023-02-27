// 1570. Final Prices With a Special Discount in a Shop
// https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop
// Easy

import Foundation

public class FinalPricesWithASpecialDiscountInAShop {
    public init() {}
    
    public func finalPrices(_ prices: [Int]) -> [Int] {
        var discounts = prices
        for i in 0..<prices.count {
            for j in i+1..<prices.count {
                if prices[i] >= prices[j] {
                    discounts[i] -= prices[j]
                    break
                }
            }
        }
        return discounts
    }
}

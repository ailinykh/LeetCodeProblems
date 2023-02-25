import XCTest
import LeetCodeProblems

final class BestTimeToBuyAndSellStockTest: XCTestCase {
    func testCase() {
        let s = BestTimeToBuyAndSellStock()
        XCTAssertEqual(s.maxProfit([7,1,5,3,6,4]), 5)
        XCTAssertEqual(s.maxProfit([7,6,4,3,1]), 0)
    }
}

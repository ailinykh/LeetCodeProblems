import XCTest
import LeetCodeProblems

final class FinalPricesWithASpecialDiscountInAShopTest: XCTestCase {
    func testCase() {
        let s = FinalPricesWithASpecialDiscountInAShop()
        XCTAssertEqual(s.finalPrices([8,4,6,2,3]), [4,2,4,2,3])
        XCTAssertEqual(s.finalPrices([1,2,3,4,5]), [1,2,3,4,5])
        XCTAssertEqual(s.finalPrices([10,1,1,6]), [9,0,1,6])
    }
}

import XCTest
import LeetCodeProblems

final class DivideArrayIntoEqualPairsTest: XCTestCase {
    func testCase() {
        let s = DivideArrayIntoEqualPairs()
        XCTAssertEqual(s.divideArray([3,2,3,2,2,2]), true)
        XCTAssertEqual(s.divideArray([1,2,3,4]), false)
    }
}

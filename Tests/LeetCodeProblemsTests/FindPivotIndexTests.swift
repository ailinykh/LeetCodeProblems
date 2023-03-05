import XCTest
import LeetCodeProblems

final class FindPivotIndexTest: XCTestCase {
    func testCase() {
        let s = FindPivotIndex()
        XCTAssertEqual(s.pivotIndex([1,7,3,6,5,6]), 3)
        XCTAssertEqual(s.pivotIndex([1,2,3]), -1)
        XCTAssertEqual(s.pivotIndex([2,1,-1]), 0)
    }
}

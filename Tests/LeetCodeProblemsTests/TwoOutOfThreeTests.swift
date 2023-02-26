import XCTest
import LeetCodeProblems

final class TwoOutOfThreeTest: XCTestCase {
    func testCase() {
        let s = TwoOutOfThree()
        XCTAssertEqual(s.twoOutOfThree([1,1,3,2], [2,3], [3]).sorted(), [2, 3])
        XCTAssertEqual(s.twoOutOfThree([3,1], [2,3], [1,2]).sorted(), [1,2,3])
        XCTAssertEqual(s.twoOutOfThree([1,2,2], [4,3,3], [5]), [])
    }
}

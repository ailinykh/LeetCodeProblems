import XCTest
import LeetCodeProblems

final class PlusOneTest: XCTestCase {
    func testCase() {
        let s = PlusOne()
        XCTAssertEqual(s.plusOne([1,2,3]), [1,2,4])
        XCTAssertEqual(s.plusOne([4,3,2,1]), [4,3,2,2])
        XCTAssertEqual(s.plusOne([9]), [1,0])
        XCTAssertEqual(s.plusOne([9,9]), [1,0,0])
    }
}

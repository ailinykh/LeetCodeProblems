import XCTest
import LeetCodeProblems

final class CheckIfArrayIsSortedAndRotatedTest: XCTestCase {
    func testCase() {
        let s = CheckIfArrayIsSortedAndRotated()
        XCTAssertEqual(s.check([3,4,5,1,2]), true)
        XCTAssertEqual(s.check([2,1,3,4]), false)
        XCTAssertEqual(s.check([1,2,3]), true)
        XCTAssertEqual(s.check([1]), true)
        XCTAssertEqual(s.check([7,9,1,1,1,3]), true)
        XCTAssertEqual(s.check([7,9,1,1,1,3,1]), false)
        XCTAssertEqual(s.check([6,10,6]), true)
    }
}

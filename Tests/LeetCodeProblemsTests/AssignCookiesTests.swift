import XCTest
import LeetCodeProblems

final class AssignCookiesTest: XCTestCase {
    func testCase() {
        let s = AssignCookies()
        XCTAssertEqual(s.findContentChildren([1,2,3], [1,1]), 1)
        XCTAssertEqual(s.findContentChildren([1,2], [1,2,3]), 2)
        XCTAssertEqual(s.findContentChildren([10,9,8,7], [5,6,7,8]), 2)
        XCTAssertEqual(s.findContentChildren([10,9,8,7,6,5], [1,2,3,5,6,7,8]), 4)
    }
}

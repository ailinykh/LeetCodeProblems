import XCTest
import LeetCodeProblems

final class ValidParenthesesTest: XCTestCase {
    func testCase() {
        let s = ValidParentheses()
        XCTAssertEqual(s.isValid("()"), true)
        XCTAssertEqual(s.isValid("()[]{}"), true)
        XCTAssertEqual(s.isValid("(]"), false)
        XCTAssertEqual(s.isValid("]"), false)
        XCTAssertEqual(s.isValid("([)]"), false)
    }
}

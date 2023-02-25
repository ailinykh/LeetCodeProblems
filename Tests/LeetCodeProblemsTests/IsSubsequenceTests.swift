import XCTest
import LeetCodeProblems

final class IsSubsequenceTest: XCTestCase {
    func testCase() {
        let s = IsSubsequence()
        XCTAssertEqual(s.isSubsequence("abc", "ahbgdc"), true)
        XCTAssertEqual(s.isSubsequence("axc", "ahbgdc"), false)
    }
}

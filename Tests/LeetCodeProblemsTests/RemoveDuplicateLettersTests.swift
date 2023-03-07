import XCTest
@testable import LeetCodeProblems

final class RemoveDuplicateLettersTest: XCTestCase {
    func testCase() {
        let s = RemoveDuplicateLetters()
        XCTAssertEqual(s.removeDuplicateLetters("bcabc"), "abc")
        XCTAssertEqual(s.removeDuplicateLetters("cbacdcbc"), "acdb")
        XCTAssertEqual(s.removeDuplicateLetters("abcdefghijklmnopqrstuvwxyz"), "abcdefghijklmnopqrstuvwxyz")
        XCTAssertEqual(s.removeDuplicateLetters("abacb"), "abc")
    }
}

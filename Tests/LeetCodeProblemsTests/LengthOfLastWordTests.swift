import XCTest
import LeetCodeProblems

final class LengthOfLastWordTest: XCTestCase {
    func testCase() {
        let s = LengthOfLastWord()
        XCTAssertEqual(s.lengthOfLastWord("Hello World"), 5)
        XCTAssertEqual(s.lengthOfLastWord("   fly me   to   the moon  "), 4)
        XCTAssertEqual(s.lengthOfLastWord("luffy is still joyboy"), 6)
        XCTAssertEqual(s.lengthOfLastWord("a"), 1)
        XCTAssertEqual(s.lengthOfLastWord("a "), 1)
    }
}

import XCTest
import LeetCodeProblems

final class LongestSubstringWithoutRepeatingCharactersTest: XCTestCase {
    func testCase() {
        let s = LongestSubstringWithoutRepeatingCharacters()
        XCTAssertEqual(s.lengthOfLongestSubstring("abcabcbb"), 3)
        XCTAssertEqual(s.lengthOfLongestSubstring("bbbbb"), 1)
        XCTAssertEqual(s.lengthOfLongestSubstring("pwwkew"), 3)
    }
}

import XCTest
import LeetCodeProblems

final class DeleteCharactersToMakeFancyStringTest: XCTestCase {
    func testCase() {
        let s = DeleteCharactersToMakeFancyString()
        XCTAssertEqual(s.makeFancyString("leeetcode"), "leetcode")
        XCTAssertEqual(s.makeFancyString("aaabaaaa"), "aabaa")
        XCTAssertEqual(s.makeFancyString("aab"), "aab")
    }
}

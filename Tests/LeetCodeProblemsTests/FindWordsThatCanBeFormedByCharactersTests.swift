import XCTest
import LeetCodeProblems

final class FindWordsThatCanBeFormedByCharactersTest: XCTestCase {
    func testCase() {
        let s = FindWordsThatCanBeFormedByCharacters()
        XCTAssertEqual(s.countCharacters(["cat","bt","hat","tree"], "atach"), 6)
        XCTAssertEqual(s.countCharacters(["hello","world","leetcode"], "welldonehoneyr"), 10)
    }
}

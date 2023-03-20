import XCTest
@testable import LeetCodeProblems

final class KthDistinctStringInAnArrayTest: XCTestCase {
    func testCase() {
        let s = KthDistinctStringInAnArray()
        XCTAssertEqual(s.kthDistinct(["d","b","c","b","c","a"], 2), "a")
        XCTAssertEqual(s.kthDistinct(["aaa","aa","a"], 1), "aaa")
        XCTAssertEqual(s.kthDistinct(["a","b","a"], 3), "")
        XCTAssertEqual(s.kthDistinct(["a","b","a","c"], 2), "c")
    }
}

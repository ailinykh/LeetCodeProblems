import XCTest
import LeetCodeProblems

final class RemoveNthNodeFromEndOfListTests: XCTestCase {
    func testCase() {
        let s = RemoveNthNodeFromEndOfList()
        XCTAssertEqual(s.removeNthFromEnd([1,2,3,4,5].list, 2)?.array, [1,2,3,5])
        XCTAssertEqual(s.removeNthFromEnd([1].list, 1)?.array, nil)
        XCTAssertEqual(s.removeNthFromEnd([1,2].list, 1)?.array, [1])
        XCTAssertEqual(s.removeNthFromEnd([1,2].list, 2)?.array, [2])
    }
}

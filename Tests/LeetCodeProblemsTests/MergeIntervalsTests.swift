import XCTest
@testable import LeetCodeProblems

final class MergeIntervalsTest: XCTestCase {
    func testCase() {
        let s = MergeIntervals()
        XCTAssertEqual(s.merge([[1,3],[2,6],[8,10],[15,18]]), [[1,6],[8,10],[15,18]])
        XCTAssertEqual(s.merge([[1,4],[4,5]]), [[1,5]])
        XCTAssertEqual(s.merge([[1, 4], [3, 7], [9, 100], [12,150]]), [[1, 7], [9, 150]])
    }
}

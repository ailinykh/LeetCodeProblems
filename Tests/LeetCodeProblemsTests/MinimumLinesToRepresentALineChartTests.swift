import XCTest
@testable import LeetCodeProblems

final class MinimumLinesToRepresentALineChartTest: XCTestCase {
    func testCase() {
        let s = MinimumLinesToRepresentALineChart()
        XCTAssertEqual(s.minimumLines([[1,7],[2,6],[3,5],[4,4],[5,4],[6,3],[7,2],[8,1]]), 3)
        XCTAssertEqual(s.minimumLines([[3,4],[1,2],[7,8],[2,3]]), 1)
        XCTAssertEqual(s.minimumLines([[1,1],[500000000,499999999],[1000000000,999999998]]), 2)
        XCTAssertEqual(s.minimumLines([[1,1],[2,2]]), 1)
        XCTAssertEqual(s.minimumLines([[1,1]]), 0)
        XCTAssertEqual(s.minimumLines([]), 0)
    }
}

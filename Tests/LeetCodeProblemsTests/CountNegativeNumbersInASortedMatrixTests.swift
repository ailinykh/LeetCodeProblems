import XCTest
@testable import LeetCodeProblems

final class CountNegativeNumbersInASortedMatrixTest: XCTestCase {
    func testCase() {
        let s = CountNegativeNumbersInASortedMatrix()
        XCTAssertEqual(s.countNegatives([[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]), 8)
        XCTAssertEqual(s.countNegatives([[3,2],[1,0]]), 0)
        XCTAssertEqual(s.countNegatives([[1,-1],[-1,-1]]), 3)
        XCTAssertEqual(s.countNegatives([[3,-1,-3,-3,-3],[2,-2,-3,-3,-3],[1,-2,-3,-3,-3],[0,-3,-3,-3,-3]]), 16)
    }
}

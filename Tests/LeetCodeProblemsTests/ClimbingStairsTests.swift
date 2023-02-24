import XCTest
import LeetCodeProblems

final class ClimbingStairsTest: XCTestCase {
    func testCase() {
        let s = ClimbingStairs()
        XCTAssertEqual(s.climbStairs(1), 1)
        XCTAssertEqual(s.climbStairs(2), 2)
        XCTAssertEqual(s.climbStairs(3), 3)
        XCTAssertEqual(s.climbStairs(4), 5)
        XCTAssertEqual(s.climbStairs(5), 8)
        XCTAssertEqual(s.climbStairs(6), 13)
        XCTAssertEqual(s.climbStairs(7), 21)
    }
}

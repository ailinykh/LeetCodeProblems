import XCTest
@testable import LeetCodeProblems

final class BullsAndCowsTest: XCTestCase {
    func testCase() {
        let s = BullsAndCows()
        XCTAssertEqual(s.getHint("1807", "7810"), "1A3B")
        XCTAssertEqual(s.getHint("1123", "0111"), "1A1B")
    }
}

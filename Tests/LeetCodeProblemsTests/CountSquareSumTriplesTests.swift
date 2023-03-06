import XCTest
import LeetCodeProblems

final class CountSquareSumTriplesTest: XCTestCase {
    func testCase() {
        let s = CountSquareSumTriples()
        XCTAssertEqual(s.countTriples(5), 2)
        XCTAssertEqual(s.countTriples(10), 4)
    }
}

import XCTest
@testable import LeetCodeProblems

final class MaximizeDistanceToClosestPersonTest: XCTestCase {
    func testCase() {
        let s = MaximizeDistanceToClosestPerson()
        XCTAssertEqual(s.maxDistToClosest([1,0,0,0,1,0,1]), 2)
        XCTAssertEqual(s.maxDistToClosest([1,0,0,0]), 3)
        XCTAssertEqual(s.maxDistToClosest([0,1]), 1)
    }
}

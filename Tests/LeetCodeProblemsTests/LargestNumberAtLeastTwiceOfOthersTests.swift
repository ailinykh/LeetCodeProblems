import XCTest
import LeetCodeProblems

final class LargestNumberAtLeastTwiceOfOthersTest: XCTestCase {
    func testCase() {
        let s = LargestNumberAtLeastTwiceOfOthers()
        XCTAssertEqual(s.dominantIndex([3,6,1,0]), 1)
        XCTAssertEqual(s.dominantIndex([1,2,3,4]), -1)
        XCTAssertEqual(s.dominantIndex([0,0,0,1]), 3)
        XCTAssertEqual(s.dominantIndex([0,0,0,0]), -1)
        XCTAssertEqual(s.dominantIndex([1,0]), 0)
        XCTAssertEqual(s.dominantIndex([0,0,3,2]), -1)
    }
}

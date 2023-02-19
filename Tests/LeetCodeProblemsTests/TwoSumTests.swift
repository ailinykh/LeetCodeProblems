import XCTest
import LeetCodeProblems

final class TwoSumTest: XCTestCase {
    func testCase() {
        let s = TwoSum()
        XCTAssertEqual(s.twoSum([2,7,11,15], 9), [0, 1])
        XCTAssertEqual(s.twoSum([3,2,4], 6), [1, 2])
        XCTAssertEqual(s.twoSum([3, 3], 6), [0, 1])
        XCTAssertEqual(s.twoSum([], 0), [])
    }
}

import XCTest
@testable import LeetCodeProblems

final class NumberOfZeroFilledSubarraysTest: XCTestCase {
    func testCase() {
        let s = NumberOfZeroFilledSubarrays()
        XCTAssertEqual(s.zeroFilledSubarray([1,3,0,0,2,0,0,4]), 6)
        XCTAssertEqual(s.zeroFilledSubarray([0,0,0,2,0,0]), 9)
        XCTAssertEqual(s.zeroFilledSubarray([2,10,2019]), 0)
        XCTAssertEqual(s.zeroFilledSubarray([0,0,0,0,0,0]), 21)
        XCTAssertEqual(s.zeroFilledSubarray([0,0,0,0,0,0,0]), 28)
        XCTAssertEqual(s.zeroFilledSubarray([0,0,0,0,0,0,0,7]), 28)
        XCTAssertEqual(s.zeroFilledSubarray([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]), 120)
    }
}

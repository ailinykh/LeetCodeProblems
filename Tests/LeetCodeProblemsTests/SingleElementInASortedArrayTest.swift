import XCTest
import LeetCodeProblems

final class SingleElementInASortedArrayTest: XCTestCase {
    func testCase() {
        let s = SingleElementInASortedArray()
        XCTAssertEqual(s.singleNonDuplicate([1,1,2,3,3,4,4,8,8]), 2)
        XCTAssertEqual(s.singleNonDuplicate([3,3,7,7,10,11,11]), 10)
        XCTAssertEqual(s.singleNonDuplicate([1,1,2]), 2)
        XCTAssertEqual(s.singleNonDuplicate([1,2,2]), 1)
        XCTAssertEqual(s.singleNonDuplicate([1]), 1)
        XCTAssertEqual(s.singleNonDuplicate([]), 0)
    }
}

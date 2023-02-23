import XCTest
import LeetCodeProblems

final class AddTwoNumbersTest: XCTestCase {
    func testCase() {
        let s = AddTwoNumbers()
        XCTAssertEqual(s.addTwoNumbers([2,4,3].list, [5,6,4].list)?.array, [7,0,8])
        XCTAssertEqual(s.addTwoNumbers([0].list, [0].list)?.array, [0])
        XCTAssertEqual(s.addTwoNumbers([9,9,9,9,9,9,9].list, [9,9,9,9].list)?.array, [8,9,9,9,0,0,0,1])
        XCTAssertEqual(s.addTwoNumbers([1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1].list, [5,6,4].list)?.array, [6,6,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1])
    }
}

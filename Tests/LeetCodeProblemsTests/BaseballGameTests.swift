import XCTest
import LeetCodeProblems

final class BaseballGameTest: XCTestCase {
    func testCase() {
        let s = BaseballGame()
        XCTAssertEqual(s.calPoints(["5","2","C","D","+"]), 30)
        XCTAssertEqual(s.calPoints(["5","-2","4","C","D","9","+","+"]), 27)
        XCTAssertEqual(s.calPoints(["1","C"]), 0)
    }
}

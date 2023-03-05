import XCTest
import LeetCodeProblems

final class AverageValueOfEvenNumbersThatAreDivisibleByThreeTest: XCTestCase {
    func testCase() {
        let s = AverageValueOfEvenNumbersThatAreDivisibleByThree()
        XCTAssertEqual(s.averageValue([1,3,6,10,12,15]), 9)
        XCTAssertEqual(s.averageValue([1,2,4,7,10]), 0)
        XCTAssertEqual(s.averageValue([4,4,9,10]), 0)
        XCTAssertEqual(s.averageValue([4,5,3,2,3,9,5,7,10,4]), 0)
    }
}

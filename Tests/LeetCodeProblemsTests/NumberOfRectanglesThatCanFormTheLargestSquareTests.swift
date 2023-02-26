import XCTest
import LeetCodeProblems

final class NumberOfRectanglesThatCanFormTheLargestSquareTest: XCTestCase {
    func testCase() {
        let s = NumberOfRectanglesThatCanFormTheLargestSquare()
        XCTAssertEqual(s.countGoodRectangles([[5,8],[3,9],[5,12],[16,5]]), 3)
        XCTAssertEqual(s.countGoodRectangles([[2,3],[3,7],[4,3],[3,7]]), 3)
    }
}

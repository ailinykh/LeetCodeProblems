import XCTest
@testable import LeetCodeProblems

final class NumberOfEnclavesTest: XCTestCase {
    func testCase() {
        let s = NumberOfEnclaves()
        XCTAssertEqual(s.numEnclaves([[0,0,0,0],[1,0,1,0],[0,1,1,0],[0,0,0,0]]), 3)
        XCTAssertEqual(s.numEnclaves([[0,1,1,0],[0,0,1,0],[0,0,1,0],[0,0,0,0]]), 0)
        XCTAssertEqual(s.numEnclaves([[0],[1],[1],[0],[0]]), 0)
        XCTAssertEqual(s.numEnclaves([
            [0,0,1,1,1,0,1,1,1,0,1],
            [1,1,1,1,0,1,0,1,1,0,0],
            [0,1,0,1,1,0,0,0,0,1,0],
            [1,0,1,1,1,1,1,0,0,0,1],
            [0,0,1,0,1,1,0,0,1,0,0],
            [1,0,0,1,1,1,0,0,0,1,1],
            [0,1,0,1,1,0,0,0,1,0,0],
            [0,1,1,0,1,0,1,1,1,0,0],
            [1,1,0,1,1,1,0,0,0,0,0],
            [1,0,1,1,0,0,0,1,0,0,1]
        ]), 7)
        XCTAssertEqual(s.numEnclaves([
            [0,1,1,0,0,0,0,1,1,0,0,0],
            [1,0,1,1,1,0,1,0,1,1,1,0],
            [1,1,0,1,0,0,1,1,0,1,1,1],
            [1,0,0,1,1,0,1,0,1,0,1,0],
            [1,0,0,0,0,1,0,0,1,1,0,1],
            [1,1,1,0,0,0,1,0,0,1,1,1],
            [1,1,1,0,0,0,0,1,0,1,0,1],
            [0,1,1,1,1,0,0,1,1,0,0,0],
            [0,1,0,1,0,1,0,1,0,0,0,1],
            [0,0,1,0,1,1,0,0,0,1,1,1]
        ]), 10)
    }
}

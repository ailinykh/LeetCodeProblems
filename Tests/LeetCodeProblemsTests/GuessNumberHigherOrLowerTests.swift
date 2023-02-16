import XCTest
import LeetCodeProblems

final class GuessNumberHigherOrLowerTest: XCTestCase {
    static var allTests = [
        ("Test case", testCase)
    ]
    
    func testCase() {
        [
            (n: 6, pick: 10, output:6),
            (n: 1, pick: 1, output:1),
            (n: 2, pick: 1, output:1),
        ].forEach {
            let s = GuessNumberHigherOrLower($0.n)
            XCTAssertEqual(s.guessNumber($0.pick), $0.output)
        }
    }
}
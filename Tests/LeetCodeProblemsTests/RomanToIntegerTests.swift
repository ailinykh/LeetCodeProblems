import XCTest
import LeetCodeProblems

final class RomanToIntegerTest: XCTestCase {
    func testCase() {
        let s = RomanToInteger()
        XCTAssertEqual(s.romanToInt("III"), 3)
        XCTAssertEqual(s.romanToInt("LVIII"), 58)
        XCTAssertEqual(s.romanToInt("MCMXCIV"), 1994)
        XCTAssertEqual(s.romanToInt("MD"), 1500)
        XCTAssertEqual(s.romanToInt("MCDLXXXVIII"), 1488)
        XCTAssertEqual(s.romanToInt("XLIX"), 49)
        XCTAssertEqual(s.romanToInt("invalid"), 0)
    }
}

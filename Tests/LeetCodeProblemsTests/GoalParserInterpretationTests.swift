import XCTest
import LeetCodeProblems

final class GoalParserInterpretationTest: XCTestCase {
    func testCase() {
        let s = GoalParserInterpretation()
        XCTAssertEqual(s.interpret("G()(al)"), "Goal")
        XCTAssertEqual(s.interpret("G()()()()(al)"), "Gooooal")
        XCTAssertEqual(s.interpret("(al)G(al)()()G"), "alGalooG")
    }
}

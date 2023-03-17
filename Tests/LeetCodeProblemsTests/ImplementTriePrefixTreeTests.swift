import XCTest
@testable import LeetCodeProblems

final class ImplementTriePrefixTreeTest: XCTestCase {
    func testCase() {
        let s = ImplementTriePrefixTree()
        s.insert("apple");
        XCTAssertTrue(s.search("apple"))
        XCTAssertFalse(s.search("app"))
        XCTAssertTrue(s.startsWith("app"))
        s.insert("app")
        XCTAssertTrue(s.search("app"))
        
        XCTAssertFalse(s.search("banana"))
        XCTAssertFalse(s.startsWith("ban"))
    }
}

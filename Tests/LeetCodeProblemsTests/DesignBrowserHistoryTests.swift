import XCTest
@testable import LeetCodeProblems

final class DesignBrowserHistoryTest: XCTestCase {
    func testCase() {
        let s = DesignBrowserHistory("leetcode.com")
        s.visit("google.com")
        s.visit("facebook.com")
        s.visit("youtube.com")
        XCTAssertEqual(s.back(1), "facebook.com")
        XCTAssertEqual(s.back(1), "google.com")
        XCTAssertEqual(s.forward(1), "facebook.com")
        s.visit("linkedin.com")
        XCTAssertEqual(s.forward(1), "linkedin.com")
        XCTAssertEqual(s.back(1), "facebook.com")
        XCTAssertEqual(s.back(1), "google.com")
    }
}

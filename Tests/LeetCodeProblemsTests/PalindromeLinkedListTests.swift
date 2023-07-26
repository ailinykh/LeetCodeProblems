import XCTest
@testable import LeetCodeProblems

final class PalindromeLinkedListTest: XCTestCase {
    func testCase() {
        let s = PalindromeLinkedList()
        XCTAssertEqual(s.isPalindrome([1,2,2,1].list), true)
        XCTAssertEqual(s.isPalindrome([1,2].list), false)
        XCTAssertEqual(s.isPalindrome([1,2,1].list), true)
        XCTAssertEqual(s.isPalindrome([1].list), true)
        XCTAssertEqual(s.isPalindrome([1,2,3,4,5,4,3,2,1].list), true)
        XCTAssertEqual(s.isPalindrome([1,2,3,4,5,5,4,3,2,1].list), true)
        XCTAssertEqual(s.isPalindrome([1,2,3,4,5,4,3,2].list), false)
    }
}

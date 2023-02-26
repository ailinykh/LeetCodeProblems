import XCTest
import LeetCodeProblems

final class MergeSimilarItemsTest: XCTestCase {
    func testCase() {
        let s = MergeSimilarItems()
        XCTAssertEqual(s.mergeSimilarItems([[1,1],[4,5],[3,8]], [[3,1],[1,5]]), [[1,6],[3,9],[4,5]])
        XCTAssertEqual(s.mergeSimilarItems([[1,1],[3,2],[2,3]], [[2,1],[3,2],[1,3]]), [[1,4],[2,4],[3,4]])
        XCTAssertEqual(s.mergeSimilarItems([[1,3],[2,2]], [[7,1],[2,2],[1,4]]), [[1,7],[2,4],[7,1]])
        XCTAssertEqual(s.mergeSimilarItems([[1,1]], [[1000,1000]]), [[1,1],[1000,1000]])
    }
}

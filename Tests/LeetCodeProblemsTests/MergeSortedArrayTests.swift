import XCTest
import LeetCodeProblems

final class MergeSortedArrayTest: XCTestCase {
    func testCase() {
        let s = MergeSortedArray()
        
        var nums1 = [1,2,3,0,0,0]
        s.merge(&nums1, 3, [2,5,6], 3)
        XCTAssertEqual(nums1, [1,2,2,3,5,6])
        
        var nums2 = [1]
        s.merge(&nums2, 1, [], 0)
        XCTAssertEqual(nums2, [1])
        
        var nums3 = [0]
        s.merge(&nums3, 0, [1], 1)
        XCTAssertEqual(nums3, [1])
        
        var nums4 = [5,6,7,0,0,0]
        s.merge(&nums4, 3, [1,2,3], 3)
        XCTAssertEqual(nums4, [1,2,3,5,6,7])
    }
}

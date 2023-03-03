import XCTest
import LeetCodeProblems

final class LinkedListCycleTest: XCTestCase {
    func testCase() {
        let s = LinkedListCycle()
        
        let list1 = [3,2,0,-4].list
        list1?.next?.next?.next = list1?.next
        XCTAssertEqual(s.hasCycle(list1), true)
        
        let list2 = [1,2].list
        list2?.next?.next = list2!
        XCTAssertEqual(s.hasCycle(list2), true)
        
        XCTAssertEqual(s.hasCycle([1].list), false)
    }
}

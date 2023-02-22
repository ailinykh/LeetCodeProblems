import XCTest
import LeetCodeProblems

final class RemoveNthNodeFromEndOfListTests: XCTestCase {
    func testCase() {
        let s = RemoveNthNodeFromEndOfList()
        XCTAssertEqual(s.removeNthFromEnd([1,2,3,4,5].list, 2)?.array, [1,2,3,5])
        XCTAssertEqual(s.removeNthFromEnd([1].list, 1)?.array, nil)
        XCTAssertEqual(s.removeNthFromEnd([1,2].list, 1)?.array, [1])
        XCTAssertEqual(s.removeNthFromEnd([1,2].list, 2)?.array, [2])
    }
}

private extension RemoveNthNodeFromEndOfList.ListNode {
    var array: [Int] {
        var arr = [Int]()
        var node = RemoveNthNodeFromEndOfList.ListNode(0, self)
        while let next = node.next {
            arr.append(next.val)
            node = next
        }
        return arr
    }
}

private extension Array where Element == Int {
    typealias ListNode = RemoveNthNodeFromEndOfList.ListNode
    
    var list: ListNode? {
        var first, last: ListNode?
        for n in self {
            if last != nil {
                let node = ListNode(n)
                last?.next = node
                last = node
            } else {
                first = ListNode(n)
                last = first
            }
        }
        return first
    }
}

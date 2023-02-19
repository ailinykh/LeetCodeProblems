import XCTest
import LeetCodeProblems

final class AddTwoNumbersTest: XCTestCase {
    func testCase() {
        let s = AddTwoNumbers()
        XCTAssertEqual(s.addTwoNumbers([2,4,3].list, [5,6,4].list)?.array, [7,0,8])
        XCTAssertEqual(s.addTwoNumbers([0].list, [0].list)?.array, [0])
        XCTAssertEqual(s.addTwoNumbers([9,9,9,9,9,9,9].list, [9,9,9,9].list)?.array, [8,9,9,9,0,0,0,1])
        XCTAssertEqual(s.addTwoNumbers([1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1].list, [5,6,4].list)?.array, [6,6,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1])
    }
}

private typealias ListNode =  AddTwoNumbers.ListNode

private extension ListNode {
    var array: [Int] {
        var arr = [Int]()
        var node = ListNode(0, self)
        while let next = node.next {
            arr.append(next.val)
            node = next
        }
        return arr
    }
}

private extension Array where Element == Int {
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

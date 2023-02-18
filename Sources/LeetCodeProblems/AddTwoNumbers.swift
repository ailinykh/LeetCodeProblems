// 2. Add Two Numbers
// https://leetcode.com/problems/add-two-numbers

import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

public class AddTwoNumbers {
    public init() {}

    public func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let list1 = l1?.array ?? []
        let list2 = l2?.array ?? []
        let (min, max) = list1.count > list2.count ? (list2, list1) : (list1, list2)
        var result = [Int]()
        
        var hasPeriod = false
        for (i, r) in max.enumerated() {
            var l = 0
            if (i < min.count) {
                l = min[i]
            }
            var sum = r + l
            if hasPeriod {
                hasPeriod = false
                sum = sum + 1
            }
            if sum > 9 {
                hasPeriod = true
                sum = sum % 10
            }
            result.append(sum)
        }
        if hasPeriod {
            result.append(1)
        }
        
        return result.list
    }
}

extension ListNode {
    public var array: [Int] {
        var arr = [Int]()
        var node = ListNode()
        node.next = self
        while let next = node.next {
            arr.append(next.val)
            node = next
        }
        return arr
    }
}

extension Array where Element == Int {
    public var list: ListNode? {
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
// 141. Linked List Cycle
// https://leetcode.com/problems/linked-list-cycle
// Easy

import Foundation

/**
 * Definition for singly-linked list.
 * public public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

public class LinkedListCycle {
    public init() {}
    
    public func hasCycle(_ head: ListNode?) -> Bool {
        // O(1)
        var slow: ListNode? = head
        var fast: ListNode? = head?.next
        while true {
            guard let next = fast?.next else {
                return false
            }
            if slow === fast {
                return true
            }
            slow = slow?.next
            fast = next.next
        }
    }
}

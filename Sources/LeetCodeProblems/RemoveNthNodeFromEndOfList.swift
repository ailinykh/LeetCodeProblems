// 19. Remove Nth Node From End of List
// https://leetcode.com/problems/remove-nth-node-from-end-of-list
// medium

import Foundation

public final class RemoveNthNodeFromEndOfList {
    public init() {}
    
    public func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard let head = head else { return nil }
        var arr = [head]
        var node = head
        while node.next != nil {
            node = node.next!
            arr.append(node)
        }

        if arr.count == n {
            return head.next
        }
        
        let next: ListNode? = n > 1 ? arr[arr.count - n + 1] : nil
        arr[arr.count - n - 1].next = next
        return head
    }
}

// 2. Add Two Numbers
// https://leetcode.com/problems/add-two-numbers
// Medium

import Foundation

class AddTwoNumbers {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result = ListNode()
        var node = result
        var firstNode: ListNode? = ListNode(0, l1)
        var secondNode: ListNode? = ListNode(0, l2)
        var hasPeriod = false
        while firstNode?.next != nil || secondNode?.next != nil {
            firstNode = firstNode?.next
            secondNode = secondNode?.next
            
            var sum = (firstNode?.val ?? 0) + (secondNode?.val ?? 0)
            if hasPeriod {
                hasPeriod = false
                sum = sum + 1
            }
            
            if sum > 9 {
                hasPeriod = true
                sum = sum % 10
            }
            
            node.next = ListNode(sum)
            node = node.next!
        }
        
        if hasPeriod {
            node.next = ListNode(1)
        }
        
        return result.next
    }
}

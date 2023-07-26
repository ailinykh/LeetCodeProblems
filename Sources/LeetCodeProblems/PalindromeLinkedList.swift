// 234. Palindrome Linked List
// https://leetcode.com/problems/palindrome-linked-list
// Easy

import Foundation

class PalindromeLinkedList {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var slow = head, fast = head
        while let next = fast?.next?.next {
            fast = next
            slow = slow?.next
        }
        
        var prev: ListNode?
        while let next = slow {
            let tmp = next.next
            slow?.next = prev
            prev = slow
            slow = tmp
        }
        
        var left = head, right = prev
        while left != nil {
            guard left?.val == right?.val else { return false }
            left = left?.next
            right = right?.next
        }
        
        return true
    }
}

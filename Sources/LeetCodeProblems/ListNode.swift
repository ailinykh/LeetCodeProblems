public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

public extension ListNode {
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

public extension Array where Element == Int {
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

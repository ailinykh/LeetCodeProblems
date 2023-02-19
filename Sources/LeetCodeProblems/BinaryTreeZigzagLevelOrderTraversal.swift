// 103. Binary Tree Zigzag Level Order Traversal
// https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal

import Foundation

public class BinaryTreeZigzagLevelOrderTraversal {
    public class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init() { self.val = 0; self.left = nil; self.right = nil; }
        public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
        public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
            self.val = val
            self.left = left
            self.right = right
        }
    }
    
    public init() {}
    
    public func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
            guard let root = root, root.val != 0 else { return [] }
            var arr = [[root.val]]
            var slice = [Int]()
            var reverse = true
            var level = 1
            repeat {
                slice = root.slice(level)
                if !slice.isEmpty {
                    if reverse {
                        slice = slice.reversed()
                    }
                    arr.append(slice)
                }
                level = level + 1
                reverse = !reverse
            } while !slice.isEmpty
            return arr
        }
}

public extension BinaryTreeZigzagLevelOrderTraversal.TreeNode {
    func slice(_ level: Int) -> [Int] {
        if level == 0 {
            return [val]
        }
        var arr = [Int]()
        if let left = left {
            arr.append(contentsOf: left.slice(level - 1))
        }
        if let right = right {
            arr.append(contentsOf: right.slice(level - 1))
        }
        return arr
    }
}

// 226. Invert Binary Tree
// https://leetcode.com/problems/invert-binary-tree

import Foundation

public class InvertBinaryTree {
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

    public func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        let node = root.left
        root.left = root.right
        root.right = node
        if let left = root.left {
            _ = invertTree(left)
        }
        if let right = root.right {
            _ = invertTree(right)
        }
        return root
    }
}

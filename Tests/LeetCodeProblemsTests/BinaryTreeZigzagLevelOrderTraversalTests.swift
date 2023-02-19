import XCTest
import LeetCodeProblems


class BinaryTreeZigzagLevelOrderTraversalTest: XCTestCase {
    typealias TreeNode = BinaryTreeZigzagLevelOrderTraversal.TreeNode
    
    func testBinaryTreeToArrayConversion() {
        let tree = TreeNode(10,
                            TreeNode(6,
                                     TreeNode(4, TreeNode(3), TreeNode(5)),
                                     TreeNode(8)),
                            TreeNode(12,
                                     TreeNode(11),
                                     TreeNode(15, TreeNode(14), TreeNode(16))))
        XCTAssertEqual(tree.array, [10,6,12,4,8,11,15,3,5,14,16])
    }
    
    func testCase() {
        let s = BinaryTreeZigzagLevelOrderTraversal()
        XCTAssertEqual(s.zigzagLevelOrder([3,9,20,15,7].tree), [[3],[20,9],[15,7]])
        XCTAssertEqual(s.zigzagLevelOrder([1].tree), [[1]])
        XCTAssertEqual(s.zigzagLevelOrder([].tree), [])
    }
}

private extension BinaryTreeZigzagLevelOrderTraversal.TreeNode {
    func add(node: BinaryTreeZigzagLevelOrderTraversal.TreeNode) {
        if val == node.val { return }
        
        if left == nil {
            left = node
        } else if right == nil {
            right = node
        } else if left?.left == nil && left?.right == nil {
            left?.add(node: node)
        } else if right?.left == nil && right?.right == nil {
            right?.add(node: node)
        } else {
            left?.add(node: node)
        }
    }
    
    var array: [Int] {
        var arr = val == 0 ? [] : [val]
        var level = 1
        var leaves = [Int]()
        repeat {
            leaves = slice(level)
            arr.append(contentsOf: leaves)
            level = level + 1
        } while !leaves.isEmpty
        return arr
    }
}

private extension Array where Element == Int {
    typealias TreeNode = BinaryTreeZigzagLevelOrderTraversal.TreeNode
    
    var tree: TreeNode {
        guard let first = first else { return TreeNode() }
        let tree = TreeNode(first)
        for i in 1..<count {
            tree.add(node: TreeNode(self[i]))
        }
        return tree
    }
}

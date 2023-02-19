import XCTest
import LeetCodeProblems

private typealias TreeNode = InvertBinaryTree.TreeNode

final class InvertBinaryTreeTest: XCTestCase {
    func testBinaryTreeToArrayConversion() {
        let tree = TreeNode(10,
                            TreeNode(6,
                                     TreeNode(4,
                                              TreeNode(2, TreeNode(1), TreeNode(3)),
                                              TreeNode(5)),
                                     TreeNode(8, TreeNode(7), TreeNode(9))),
                            TreeNode(15,
                                     TreeNode(12, TreeNode(11), TreeNode(13)),
                                     TreeNode(18, TreeNode(16), TreeNode(20)))
        )
        XCTAssertEqual(tree.array, [10,6,15,4,8,12,18,2,5,7,9,11,13,16,20,1,3])
        
        let array = [75,50,100,20,60,90,150,1,49,55,70,80,99,140,200]
        XCTAssertEqual(array.tree?.array, array)
    }
    
    func testCase() {
        let s = InvertBinaryTree()
        XCTAssertEqual(s.invertTree([4,2,7,1,3,6,9].tree)?.array, [4,7,2,9,6,3,1])
        XCTAssertEqual(s.invertTree([2,1,3].tree)?.array, [2,3,1])
    }
}

private extension TreeNode {
    var array: [Int] {
        var arr = [val]
        var level = 1
        var leaves = [Int]()
        repeat {
            leaves = tree(node: self, level: level)
            arr.append(contentsOf: leaves)
            level = level + 1
        } while !leaves.isEmpty
        return arr
    }
    
    private func tree(node: TreeNode, level: Int = 0) -> [Int] {
        if level == 0 {
            return [node.val]
        }
        var arr = [Int]()
        if let left = node.left {
            arr.append(contentsOf: tree(node: left, level: level - 1))
        }
        if let right = node.right {
            arr.append(contentsOf: tree(node: right, level: level - 1))
        }
        return arr
    }
}

private extension TreeNode {
    func add(node: TreeNode) {
        if val == node.val { return }
        
        if val > node.val {
            if let left = left {
                left.add(node: node)
            } else {
                left = node
            }
        } else {
            if let right = right {
                right.add(node: node)
            } else {
                right = node
            }
        }
    }
}

private extension Array where Element == Int {
    var tree: TreeNode? {
        guard let first = first else { return nil }
        let tree = TreeNode(first)
        for i in 1..<count {
            tree.add(node: TreeNode(self[i]))
        }
        return tree
    }
}
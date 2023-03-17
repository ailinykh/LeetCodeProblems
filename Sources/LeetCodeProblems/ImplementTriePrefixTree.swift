// 208. Implement Trie (Prefix Tree)
// https://leetcode.com/problems/implement-trie-prefix-tree
// Medium

import Foundation


class ImplementTriePrefixTree {
    
    private let root = Node()
    
    init() {}
    
    func insert(_ word: String) {
        var next = root
        for c in word {
            if let exists = next.next[c] {
                next = exists
            } else {
                let node = Node()
                node.value = c
                next.next[c] = node
                next = node
            }
        }
        next.last = true
    }
    
    func search(_ word: String) -> Bool {
        var next = root
        for c in word {
            guard let existed = next.next[c] else {
                return false
            }
            next = existed
        }
        return next.last
    }
    
    func startsWith(_ prefix: String) -> Bool {
        var next = root
        for c in prefix {
            guard let existed = next.next[c] else {
                return false
            }
            next = existed
        }
        return true
    }
    
    final class Node {
        var value: Character = Character(" ")
        var next: [Character: Node] = [:]
        var last = false
    }
}

/**
 * Your Trie object will be instantiated and called as such:
 * let obj = Trie()
 * obj.insert(word)
 * let ret_2: Bool = obj.search(word)
 * let ret_3: Bool = obj.startsWith(prefix)
 */

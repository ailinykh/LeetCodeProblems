// 20. Valid Parentheses
// https://leetcode.com/problems/valid-parentheses
// easy

import Foundation

public final class ValidParentheses {
    public init() {}
    
    public func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        for c in s {
            if c == "]" || c == "}" || c == ")" {
                guard let e = stack.popLast() else { return false }
                if c == "]" && e != "[" { return false }
                if c == "}" && e != "{" { return false }
                if c == ")" && e != "(" { return false }
            } else {
                stack.append(c)
            }
        }
        return stack.isEmpty
    }
}

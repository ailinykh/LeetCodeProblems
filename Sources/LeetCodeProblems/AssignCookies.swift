// 455. Assign Cookies
// https://leetcode.com/problems/assign-cookies
// Easy

import Foundation

public final class AssignCookies {
    public init() {}
    
    public func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let g = g.sorted(), s = s.sorted()
        var i = 0, j = 0, count = 0
        while i < g.count && j < s.count {
            if g[i] <= s[j] {
                i += 1
                count += 1
            }
            j += 1
        }
        return count
    }
}

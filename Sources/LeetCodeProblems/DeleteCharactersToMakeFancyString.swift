// 1302. Delete Characters to Make Fancy String
// https://leetcode.com/problems/delete-characters-to-make-fancy-string
// Easy

import Foundation

public final class DeleteCharactersToMakeFancyString {
    public init() {}
    
    public func makeFancyString(_ s: String) -> String {
        var result = Array(repeating: "", count: s.count), last1: Character = " ", last2: Character = " "
        for c in s {
            if result.count < 2 || last1 != last2 || last2 != c {
                result.append("\(c)")
                last2 = last1
                last1 = c
            }
        }
        return result.joined()
    }
}

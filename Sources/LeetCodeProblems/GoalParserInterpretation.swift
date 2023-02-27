// 1797. Goal Parser Interpretation
// https://leetcode.com/problems/goal-parser-interpretation
// Easy

import Foundation

public class GoalParserInterpretation {
    public init() {}

    public func interpret(_ command: String) -> String {
        var result = "", prev: Character = " "
        for c in command {
            if c == ")" {
                result = result + (prev == "(" ? "o" : "al")
            } else if c == "G" {
                result = result + "G"
            }
            prev = c
        }
        return result
    }
}

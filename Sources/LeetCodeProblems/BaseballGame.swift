// 682. Baseball Game
// https://leetcode.com/problems/baseball-game
// Easy

import Foundation

public final class BaseballGame {
    public init() {}
    
    public func calPoints(_ operations: [String]) -> Int {
        var scores = [Int]()
        for op in operations {
            switch op {
            case "C":
                _ = scores.popLast()
            case "D":
                scores.append(scores[scores.count - 1] * 2)
            case "+":
                scores.append(scores[scores.count - 1] + scores[scores.count - 2])
            default:
                scores.append(Int(op) ?? 0)
            }
        }
        return scores.reduce(0, +)
    }
}

// 374. Guess Number Higher or Lower
// https://leetcode.com/problems/guess-number-higher-or-lower

import Foundation

public class GuessGame {
    private let q: Int
    
    public init(_ q: Int) {
        self.q = q
    }
    
    func guess(_ n: Int) -> Int {
        n == q ? 0 : n > q ? -1 : 1
    }
}

public class GuessNumberHigherOrLower: GuessGame {
    public func guessNumber(_ n: Int) -> Int {
        // 1 < pick < n
        if n == 1 || guess(n) == 0 {
            return n
        }
        var b: (bottom: Int, top: Int) = (1, n)
        var pick = b.top
        var check = 0
        repeat {
            check = guess(pick)
            if check == -1 {
                // guess is lower
                b.top = pick
                pick = pick / 2
            } else if check == 1 {
                // guess is higher
                b.bottom = pick
                pick = (b.top - b.bottom) / 2 + b.bottom
            }
        } while(check != 0)
        return pick
    }
}
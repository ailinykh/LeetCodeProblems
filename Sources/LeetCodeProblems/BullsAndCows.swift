// 299. Bulls and Cows
// https://leetcode.com/problems/bulls-and-cows
// Medium

import Foundation

class BullsAndCows {
    func getHint(_ secret: String, _ guess: String) -> String {
        var hash = [Character: Int]()
        let secret = Array(secret), guess = Array(guess)
        for i in 0..<secret.count {
            if secret[i] != guess[i] {
                hash[secret[i]] = hash[secret[i], default: 0] + 1
            }
        }
        
        var bulls = 0, cows = 0
        for i in 0..<secret.count {
            if guess[i] == secret[i] {
                bulls += 1
            } else if hash[guess[i], default: 0] > 0 {
                hash[guess[i]] = hash[guess[i]]! - 1
                cows += 1
            }
        }
        
        return "\(bulls)A\(cows)B"
    }
}

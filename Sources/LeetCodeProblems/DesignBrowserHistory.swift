// 1582. Design Browser History
// https://leetcode.com/problems/design-browser-history
// Medium

import Foundation

class DesignBrowserHistory {
    var history: [String]
    var i: Int
    
    init(_ homepage: String) {
        self.history = [homepage]
        self.i = 0
    }
    
    func visit(_ url: String) {
        // ["leetcode.com", "google.com", "facebook.com", "linkedin.com"]
        // i = 3
        history = Array(history[0...i])
        history.append(url)
        i += 1
    }
    
    func back(_ steps: Int) -> String {
        // ["leetcode.com", "google.com", "facebook.com", "linkedin.com"]
        // i = 1
        i = max(i - steps, 0)
        return history[i] // facebook.com google.com
    }
    
    func forward(_ steps: Int) -> String {
        // ["leetcode.com", "google.com", "facebook.com", "linkedin.com"]
        // i = 2
        i = min(i + steps, history.count - 1)
        return history[i] // facebook.com
    }
}

/**
 * Your BrowserHistory object will be instantiated and called as such:
 * let obj = BrowserHistory(homepage)
 * obj.visit(url)
 * let ret_2: String = obj.back(steps)
 * let ret_3: String = obj.forward(steps)
 */

// 1073. Number of Enclaves
// https://leetcode.com/problems/number-of-enclaves
// Medium

import Foundation

class NumberOfEnclaves {
    func numEnclaves(_ grid: [[Int]]) -> Int {
        guard grid.count > 1, grid[0].count > 1 else { return 0 }
        var grid = grid
        
        for i in 0..<grid.count {
            findCorners(&grid, i, 0)
            findCorners(&grid, i, grid[0].count - 1)
        }
        
        for j in 0..<grid[0].count {
            findCorners(&grid, 0, j)
            findCorners(&grid, grid.count - 1, j)
        }
        
        var count = 0
        for i in 1..<grid.count-1 {
            for j in 1..<grid[0].count-1 {
                if grid[i][j] == 1 {
                    count += 1
                }
            }
        }
        
        return count
    }
    
    func findCorners(_ grid: inout [[Int]], _ i: Int, _ j: Int) {
        guard
            i >= 0,
            j >= 0,
            i < grid.count,
            j < grid[0].count,
            grid[i][j] == 1
        else { return }
        grid[i][j] = 0
        findCorners(&grid, i+1, j)
        findCorners(&grid, i-1, j)
        findCorners(&grid, i, j+1)
        findCorners(&grid, i, j-1)
    }
}

#
# @lc app=leetcode id=2352 lang=python3
#
# [2352] Equal Row and Column Pairs
#

# @lc code=start
class Solution:
    def equalPairs(self, grid: List[List[int]]) -> int:
        length = len(grid)
        count = 0
        rows = {}

        for r in range(length):
            row = tuple(grid[r])
            rows[row] = 1 + rows.get(row, 0)

        for c in range(length):
            col = tuple(grid[i][c] for i in range(length))
            count += rows.get(col, 0)

        return count

        
# @lc code=end


#
# @lc app=leetcode id=11 lang=python3
#
# [11] Container With Most Water
#

# @lc code=start
class Solution:
    def maxArea(self, height: List[int]) -> int:
        l = maximum = 0
        r = len(height) - 1
        
        while l != r:
            h = min(height[l], height[r])
            vol = h *(abs(r - l))
            if vol > maximum:
                maximum = vol
            if h == height[l]:
                l += 1
            elif h == height[r]:
                r -= 1
        return maximum

        
# @lc code=end


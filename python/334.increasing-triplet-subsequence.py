#
# @lc app=leetcode id=334 lang=python3
#
# [334] Increasing Triplet Subsequence
#

# @lc code=start
class Solution:
    def increasingTriplet(self, nums: List[int]) -> bool:
        s = f = float('inf')

        for n in nums:
            if n <= f:
                f = n
            elif n <= s:
                s = n
            elif n > s:
                return True
        return False
        
# @lc code=end


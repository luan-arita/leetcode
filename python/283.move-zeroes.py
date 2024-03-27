#
# @lc app=leetcode id=283 lang=python3
#
# [283] Move Zeroes
#

# @lc code=start
class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        l = 0
        for r in range(len(nums)):
            if nums[r]:
                nums[r], nums[l] = nums[l], nums[r]
                l += 1
    

        """
        Do not return anything, modify nums in-place instead.
        """
        
# @lc code=end


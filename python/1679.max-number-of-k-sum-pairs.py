#
# @lc app=leetcode id=1679 lang=python3
#
# [1679] Max Number of K-Sum Pairs
#

# @lc code=start
class Solution:
    def maxOperations(self, nums: List[int], k: int) -> int:
        l = operations = 0
        r = len(nums) - 1
        nums.sort()

        while l < r:
            if nums[l] + nums[r] == k:
                l += 1
                r -= 1
                operations += 1
            elif (nums[l] + nums[r]) < k:
                l += 1
            else:
                r -= 1
        return operations

        
# @lc code=end


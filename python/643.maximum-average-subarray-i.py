#
# @lc app=leetcode id=643 lang=python3
#
# [643] Maximum Average Subarray I
#

# @lc code=start
class Solution:
    def findMaxAverage(self, nums: List[int], k: int) -> float:
        first_sum = maximum = sum(nums[:k])

        for i in range(k, len(nums)):
            first_sum += nums[i] - nums[i - k]
            maximum = max(maximum, first_sum)
            
        return maximum / k
# @lc code=end


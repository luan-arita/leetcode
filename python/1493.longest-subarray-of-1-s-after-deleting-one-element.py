#
# @lc app=leetcode id=1493 lang=python3
#
# [1493] Longest Subarray of 1's After Deleting One Element
#

# @lc code=start
class Solution:
    def longestSubarray(self, nums: List[int]) -> int:
        k = 1

        l = 0
        #same solution as 1004, but we set k = 1 and subtract 1 from the result
        #we find the biggest window possible and keep sliding it forward. If it finds another sequence such that there are more 1's and only one 0, it increases the windows size. Then this size is returned
        for r in range(len(nums)):
            if nums[r] == 0:
                k -= 1
            if k < 0:
                if nums[l] == 0:
                    k += 1
                l += 1
        return r - l
        
# @lc code=end


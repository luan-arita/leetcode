#
# @lc app=leetcode id=1431 lang=python3
#
# [1431] Kids With the Greatest Number of Candies
#

# @lc code=start
class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        result = []
        
        for j in range(len(candies)):
            if all((candies[j] + extraCandies) >= i for i in candies):
                result.append(True)
            else:
                result.append(False)
        return result

        
# @lc code=end

#
# @lc app=leetcode id=2390 lang=python3
#
# [2390] Removing Stars From a String
#

# @lc code=start
class Solution:
    def removeStars(self, s: str) -> str:
        ans = []
        
        #iterates through string. Characters get added to answer array.
        #If it iterates through a star, then it removes last character
        #added to array.
        for i in s:
            if i == '*':
                ans.pop()
            else:
                ans += i
        return "".join(ans)
        
# @lc code=end


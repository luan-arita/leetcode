#
# @lc app=leetcode id=1768 lang=python3
#
# [1768] Merge Strings Alternately
#

# @lc code=start
class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        count = 0
        result = ""
        i = 0
        while i < len(word1) or i < len(word2):
            if i < len(word1):
                result += word1[i]
            
            if i < len(word2):
                result += word2[i]
            
            i += 1
        return result
    
        
# @lc code=end


#
# @lc app=leetcode id=1456 lang=python3
#
# [1456] Maximum Number of Vowels in a Substring of Given Length
#

# @lc code=start
class Solution:
    def maxVowels(self, s: str, k: int) -> int:
        l, count, result = 0, 0, 0
        vowel = "aiueo"
        for r in range(len(s)):
            count += 1 if s[r] in vowel else 0
            if r - l + 1 > k:
                count -= 1 if s[l] in vowel else 0
                l += 1
            result = max(result, count)
        return result
            
            
        
# @lc code=end


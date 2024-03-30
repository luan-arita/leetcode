#
# @lc app=leetcode id=1657 lang=python3
#
# [1657] Determine if Two Strings Are Close
#

# @lc code=start
class Solution:
    def closeStrings(self, word1: str, word2: str) -> bool:
        #checks if both words have the same characters
        unique1 = set(word1)
        unique2 = set(word2)

        if unique1 != unique2:
            return False

        #checks if both words have same character frequencies
        #operation1 and operation2 does not matter, as they can be done indefinitely. All it matters is that they have the same frequencies, as the frequencies can be switched between characters
        occur1 = sorted([word1.count(i) for i in unique1])
        occur2 = sorted([word2.count(i) for i in unique2])
        
        if occur1 != occur2:
            return False
        else:
            return True
        
# @lc code=end


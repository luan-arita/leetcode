#
# @lc app=leetcode id=345 lang=python3
#
# [345] Reverse Vowels of a String
#

# @lc code=start
class Solution:
    def reverseVowels(self, s: str) -> str:
        vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'I', 'U', 'E', 'O']
        word = list(s)
        vowelsUsed = []
        indexes = []
        for i in range(len(word)):
            if word[i] in vowels:
                vowelsUsed.append(word[i])
                indexes.append(i)
        for i, idx in enumerate(reversed(indexes)):
            word[idx] = vowelsUsed[i]
        return ''.join(word)


        
# @lc code=end


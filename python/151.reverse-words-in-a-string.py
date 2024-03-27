#
# @lc app=leetcode id=151 lang=python3
#
# [151] Reverse Words in a String
#

# @lc code=start
class Solution:
    def reverseWords(self, s: str) -> str:
        stringList = list(s)
        words = []
        word = ""
        for i in range(len(stringList)):

            if stringList[i] == " ":
                words.append(word)
                word = ""
            else:
                word += stringList[i]
        words.append(word)

        reversedstr = ""
        for i in reversed(range(len(words))):
            if i == 0:
                reversedstr += words[i]
            elif i > 0 and words[i] != "":
                reversedstr += words[i]
                reversedstr += " "
            else:
                continue

        return reversedstr.strip()
        
# @lc code=end


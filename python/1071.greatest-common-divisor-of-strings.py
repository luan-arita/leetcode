#
# @lc app=leetcode id=1071 lang=python3
#
# [1071] Greatest Common Divisor of Strings
#

# @lc code=start
class Solution:
    def gcdOfStrings(self, str1: str, str2: str) -> str:
        L1 = len(str1)
        L2 = len(str2)
        L = min(L1, L2)

        if str1 + str2 != str2 + str1:
            return ""
        
        def isDivisor(l):
            if L1 % l or L2 % l:
                return False
            f1, f2 = L1 // l, L2 // l
            return str1[:l] * f1 == str1 and str2[:l] * f2 == str2
        
        for i in range(L, 0, -1):
            if isDivisor(i):
                return str1[:i]
        return ""


        
# @lc code=end


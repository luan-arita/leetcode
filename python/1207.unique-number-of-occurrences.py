#
# @lc app=leetcode id=1207 lang=python3
#
# [1207] Unique Number of Occurrences
#

# @lc code=start
class Solution:
    def uniqueOccurrences(self, arr: List[int]) -> bool:
        hashmap = {}
        for i in arr:
            if i in hashmap:
                hashmap[i] += 1
            else:
                hashmap[i] = 1
        
        list_hashmap = list(hashmap.values())
        count_hashmap = {}
        for i in list_hashmap:
            if i in count_hashmap:
                return False
            count_hashmap[i] = 1
        return True
                
# @lc code=end


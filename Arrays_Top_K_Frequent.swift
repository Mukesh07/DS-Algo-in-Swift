import Foundation

// Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

 

// Example 1:

// Input: nums = [1,1,1,2,2,3], k = 2
// Output: [1,2]
// Example 2:

// Input: nums = [1], k = 1
// Output: [1]


class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var hashMap: [Int: Int] = [:]
        
        for num in nums {
            hashMap[num, default: 0] += 1
        }
        let sortedHashMap = hashMap.sorted { $0.value > $1.value }
        print(sortedHashMap.prefix(k))
        let topKFrequent = sortedHashMap.prefix(k).map { $0.key }
        
        return topKFrequent
    }
}


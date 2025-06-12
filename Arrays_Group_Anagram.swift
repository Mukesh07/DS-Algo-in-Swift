import Foundation

// Given an array of strings strs, group the anagrams together. You can return the answer in any order.

 

// Example 1:

// Input: strs = ["eat","tea","tan","ate","nat","bat"]

// Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

// Explanation:

// There is no string in strs that can be rearranged to form "bat".
// The strings "nat" and "tan" are anagrams as they can be rearranged to form each other.
// The strings "ate", "eat", and "tea" are anagrams as they can be rearranged to form each other.
// Example 2:

// Input: strs = [""]

// Output: [[""]]

// Example 3:

// Input: strs = ["a"]

// Output: [["a"]]


class Solution {
        func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagramGroups: [String: [String]] = [:]

        for str in strs {
            let sortedStr = String(str.sorted())
            anagramGroups[sortedStr, default: []].append(str)
        }

        return Array(anagramGroups.values)
    }   
}






// Time limit exceeded solution

// class Solution {
//         func groupAnagrams(_ strs: [String]) -> [[String]] {
//         var solutionArray = [[String]]()
//         var hashMap = [String: Bool]()
//         var j = 0
        
//         for str in strs {
//             hashMap[str] = false
//         }
        
//         for (i, str) in strs.enumerated() {  
//             var anagramArray = [String]()          
//             if !hashMap[str]! {
                
                
//                 anagramArray.append(str)
//                 for(j, str1) in strs.enumerated(){
//                     if i < j, checkAnagram(str1, str) {
//                         anagramArray.append(str1)
//                         hashMap[str1] = true
//                     }
//                 }
//             }
//             if !anagramArray.isEmpty {
//                  solutionArray.append(anagramArray)
//             }
            
//         }
//         return solutionArray
//     }
    
//     func checkAnagram(_ strA: String, _ strB: String) -> Bool {
//         var hashMapA = [Character: Int]()
//         var hashMapB = [Character: Int]()
        
//         for char in strA {
//             if hashMapA[char] != nil {
//                 hashMapA[char]! += 1
//             } else {
//                 hashMapA[char] = 1
//             }
//         }
        
//         for char in strB {
//             if hashMapB[char] != nil {
//                 hashMapB[char]! += 1
//             } else {
//                 hashMapB[char] = 1
//             }
//         }
        
//         return (hashMapA == hashMapB)
//     }
// }
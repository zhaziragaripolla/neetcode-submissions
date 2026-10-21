class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var charsCount: [Character:Int] = [:] // O (n) - space complexity

    var sChars = Array(s)
    var tChars = Array(t)
for char in sChars { charsCount[char, default: 0] += 1 } // O(n)

     for char in tChars {
        if let count = charsCount[char]  {
            if (count > 0) {
                charsCount[char]? -= 1
            } else {
                return false
            }
            
        } else {
            return false
        }
     } //  O (m)

        for val in charsCount.values {
            if (val != 0) {
                return false
            }
        }
        return true
    }
}

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {

        guard (s.count == t.count) else {
            return false
        }
        var charsCount: [Character:Int] = [:] // O (n) - space complexity

for char in s { charsCount[char, default: 0] += 1 } // O(n)

     for char in t {
        charsCount[char, default: 0] -= 1

        if (charsCount[char]! < 0) {
            return false
        }
     } //  O (m)

       return true
    }
}

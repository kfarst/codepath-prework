import Foundation

class Solution {
  func longestConsecutive(_ A: [Int]) -> Int {
    var set = Set<Int>()
      var longest = 0

      for num in A {
        set.insert(num)
      }

    for num in A {
      if !set.contains(num - 1) {
        var curr = num
          while set.contains(curr) {
            curr = curr + 1
          }
        longest = [longest, curr - num].max()!
      }
    }

    return longest
  }
}

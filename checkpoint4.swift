import Foundation

class Solution {
  func nextGreater(_ A: inout [Int]) -> [Int] {
    var nextGreatest = [Int]()

      for i in 0..<A.count {
        var next = -1

          for j in i+1..<A.count {
            if A[i] < A[j] {
              next = A[j]
                break
            }
          }

        nextGreatest.append(next)
      }

    return nextGreatest
  }
}

import Foundation

class Solution {
  func prettyPrint(_ A: inout Int) -> [[Int]] {
    var matrix = [[Int]]()
      var start = 0
      var ending = A * 2 - 1

      for i in 0..<ending {
        matrix.append(Array(repeating: 0, count: ending))
      }

    while start < ending {
      for i in start..<ending {
        matrix[start][i] = A
          matrix[i][start] = A
          matrix[ending - 1][i] = A
          matrix[i][ending - 1] = A
      }

      start = start + 1
        ending = ending - 1
        A = A - 1
    }

    return matrix
  }
}

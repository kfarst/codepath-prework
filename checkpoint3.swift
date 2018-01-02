import Foundation

class Solution {
  func kthsmallest(_ A: [Int], _ B: inout Int) -> Int {
    var list = A.map { $0 }
    return quickSelect(B, &list, 0, A.count - 1)
  }

  private func quickSelect(_ n: Int, _ arr: inout [Int], _ low: Int, _ high: Int) -> Int {
    guard low != high else {
      return arr[low]
    }

    let pivot = arr[low]

      swapValues(&arr, low, high)

      var selector = low

      for i in low..<high {
        if arr[i] < pivot {
          swapValues(&arr, i, selector)
            selector = selector + 1
        }
      }

    swapValues(&arr, high, selector)

      if selector == n - 1 {
        return arr[selector]
      }
      else if selector < n - 1 {
        return quickSelect(n, &arr, selector+1, high)
      }
      else {
        return quickSelect(n, &arr, low, selector-1)
      }
  }

  private func swapValues(_ list: inout [Int], _ leftIndex: Int, _ rightIndex: Int) {
    let temp = list[leftIndex]
      list[leftIndex] = list[rightIndex]
      list[rightIndex] = temp
  }

}

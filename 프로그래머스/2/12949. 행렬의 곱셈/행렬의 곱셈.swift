import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    var tmp: [Int] = []
    for arr in arr1 {
        for i in 0..<arr2.first!.count {
            var num = 0
            for j in 0..<arr2.count {
                num += arr[j] * arr2[j][i]
            }
            tmp.append(num)
        }
        result.append(tmp)
        tmp = []
    }
    return result
}
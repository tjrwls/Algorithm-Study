import Foundation

func solution(_ n:Int) -> Int {
    var rst = 0
    func find(_ arr: [Int]) {
        var check: Set<Int> = []
        if arr.count == n {
            rst += 1
        } else {
            for idx in 0..<arr.count {
                check.insert(arr[idx])
                check.insert(arr[idx] + (arr.count - idx))
                check.insert(arr[idx] - (arr.count - idx ))
            }
            for j in 0..<n{
                if !check.contains(j) {
                    find(arr + [j])
                }
            }
        }
    }
    for i in 0..<n {
        find([i])
    }
    return rst
}
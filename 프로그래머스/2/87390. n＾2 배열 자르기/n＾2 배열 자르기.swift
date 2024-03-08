import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var result: [Int] = []
    for idx in Int(left)...Int(right) {
        if idx % n < idx / n {
            result.append((idx / n) + 1)
        } else {
            result.append((idx % n) + 1)
        }
    }
    return result
}
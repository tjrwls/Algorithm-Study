import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var result = 0
    func dfs(_ n: [Int]) {
        if n.count == numbers.count {
            var sum = 0
            for idx in 0..<numbers.count {
                sum += numbers[idx] * n[idx]
            }
            if sum == target { result += 1 }
        } else {
            dfs(n + [1])
            dfs(n + [-1])
        }
    }
    dfs([])
    return result
}
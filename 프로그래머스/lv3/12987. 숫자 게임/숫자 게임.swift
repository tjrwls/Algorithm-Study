import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var ans = 0
    let a = a.sorted(by: >)
    var b = b.sorted(by: >)
    for num in a {
        for idx in 0..<b.count {
            if b[idx] > num {
                b.remove(at: idx)
                ans += 1
                break
            }
        }
    }
    return ans
}
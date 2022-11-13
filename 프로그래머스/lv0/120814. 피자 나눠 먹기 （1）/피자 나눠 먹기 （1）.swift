import Foundation

func solution(_ n:Int) -> Int {
    for i in 1...n {
        if i * 7 >= n {
            return i
        }
    }
    return Int(ceil(Double(n / 7)))
}
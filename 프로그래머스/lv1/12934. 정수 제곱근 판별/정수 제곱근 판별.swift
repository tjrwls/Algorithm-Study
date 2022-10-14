import Foundation
func solution(_ n:Int64) -> Int64 {
    var number: Double = sqrt(Double(n))
    return Double(Int64(number)) == number ? Int64(number + 1) * Int64(number + 1) : -1
}
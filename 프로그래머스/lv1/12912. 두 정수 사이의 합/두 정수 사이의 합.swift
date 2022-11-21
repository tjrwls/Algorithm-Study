import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var sum: Int = 0
    for num in a > b ? b...a : a...b {
        sum += Int(num)
    }    
    return sum
}
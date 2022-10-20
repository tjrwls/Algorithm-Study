import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    return ((k * 2) - 1) % numbers.count
}
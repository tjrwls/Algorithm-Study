import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var section = section
    var result = 0
    while !section.isEmpty {
        let num = section.last! - m
        while max(num, 0) < section.last ?? 0 {
            section.removeLast()
        }
        result += 1
    }
    return result
}
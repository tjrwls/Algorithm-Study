import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var groupA: Float = ceil(Float(a) / 2)
    var groupB: Float = ceil(Float(b) / 2)
    var answer: Int = 1
    
    while groupA != groupB {
        groupA = ceil(groupA / 2)
        groupB = ceil(groupB / 2)
        answer += 1
    }
    return answer
}
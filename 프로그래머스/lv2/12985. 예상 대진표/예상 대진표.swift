import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var groupA = Float(a)
    var groupB = Float(b)
    var answer = 0
    
    while groupA != groupB {
        groupA = ceil(groupA / 2)
        groupB = ceil(groupB / 2)
        answer += 1
    }
    return answer
}
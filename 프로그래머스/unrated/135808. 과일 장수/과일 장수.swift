import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var answer: Int = 0
    var score: [Int] = score.sorted(by: >)
    var index: Int = m - 1
    
    while index < score.count {
        answer +=  score[index] * m
        index += m
    }

    return answer
}
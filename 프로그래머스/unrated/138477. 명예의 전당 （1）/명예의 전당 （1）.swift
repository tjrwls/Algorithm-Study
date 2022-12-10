import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var answer: [Int] = []
    var checkScore: [Int] = []
    
    for index in 0...(score.count - 1) {
        
        if index < k {
            checkScore = Array(score[0...index])
        } else {
            checkScore = Array(score[0...index].sorted(by: >)[0...(k - 1)])
        }
        answer.append(checkScore.min() ?? 0)
    }
    
    return answer
}
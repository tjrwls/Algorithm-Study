import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var temp: [Int] = []
    var answer: Int = 0
    var count: Int = score.count
    
    for score in (score.sorted(by: >) + [0]){
        if temp.count < m {
            temp.append(score)
        } else {
            answer += temp.min()! * temp.count
            temp = [score]
        }
        count -= 1
    }

    return answer
}
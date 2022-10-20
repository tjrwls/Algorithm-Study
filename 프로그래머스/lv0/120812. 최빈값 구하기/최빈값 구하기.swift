import Foundation

func solution(_ array:[Int]) -> Int {
    var answer = Array(repeating: 0, count: (array.max() ?? 1000) + 1)
    var count: Int = 0
    for i in array {
        answer[i] += 1
    }
    
    for j in answer {
        if answer.max() == j{
            count += 1
        }
    }
    return count == 1 ? answer.firstIndex(of: answer.max() ?? 0) ?? 0: -1
//    array.map{answer[ $0 ] += 1 }
//    return answer.filter{answer.max() == $0}.count == 1 ? answer.firstIndex(of: answer.max() ?? 0) ?? 0 : -1
}

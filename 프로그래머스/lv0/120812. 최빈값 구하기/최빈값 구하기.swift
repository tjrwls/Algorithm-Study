import Foundation

func solution(_ array:[Int]) -> Int {
    var answer = Array(repeating: 0, count: (array.max() ?? 1000) + 1)
    array.map{answer[ $0 ] += 1 }
    return answer.filter{answer.max() == $0}.count == 1 ? answer.firstIndex(of: answer.max() ?? 0) ?? 0 : -1
}
import Foundation

func solution(_ strlist:[String]) -> [Int] {
    var answer : Array<Int> = []
    for i in strlist {
        answer.append(i.count)
    }
    return answer
}
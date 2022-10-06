import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var answer: Int = 0
    for (aElement, bElement) in zip(a, b){
        answer += aElement * bElement
    }
    return answer
}
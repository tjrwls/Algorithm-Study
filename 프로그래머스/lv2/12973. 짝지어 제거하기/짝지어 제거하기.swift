import Foundation

func solution(_ s:String) -> Int{
    var answer: [String] = []

    for element in s {
        if !answer.isEmpty && answer.last ?? "" == String(element) {
            answer.removeLast()
        } else {
            answer.append(String(element))
        }
    }
    return answer.isEmpty ? 1 : 0
}
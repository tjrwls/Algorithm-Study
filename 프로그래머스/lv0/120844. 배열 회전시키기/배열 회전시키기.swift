import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var answer = numbers
    (direction == "right") ?
    answer.insert(answer.removeLast(), at: numbers.startIndex) :
    answer.insert(answer.removeFirst(), at: numbers.endIndex - 1)
    return answer
}
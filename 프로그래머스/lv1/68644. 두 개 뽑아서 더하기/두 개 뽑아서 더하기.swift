import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var answer: Set<Int> = []
    
    for outIndex in 0...(numbers.count - 2) {
        for inIndex in (outIndex + 1)...(numbers.count - 1){
            answer.insert(numbers[outIndex] + numbers[inIndex])
        }
    }
    return answer.sorted()
}
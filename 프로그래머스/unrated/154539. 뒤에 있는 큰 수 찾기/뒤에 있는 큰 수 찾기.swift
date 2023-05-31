import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result = Array(repeating: -1, count: numbers.count)
    var stack: [Int] = []
    for (index, num) in numbers.enumerated() {
        while !stack.isEmpty && numbers[stack.last!] < num {
            result[stack.removeLast()] = num
        }
        stack.append(index)
    }
    return result
}
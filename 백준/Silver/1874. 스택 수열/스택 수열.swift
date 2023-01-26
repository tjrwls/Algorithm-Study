import Foundation
let n = Int(readLine()!)!
var inputNum: [Int] = []
var stack: [Int] = []
var answer: [String] = []
for _ in 0..<n {
    inputNum.append(Int(readLine()!)!)
}
for number in 1...n {
    if number <= inputNum.first! {
        stack.append(number)
        answer.append("+")
    }
    while stack.last ?? 0 == inputNum.first ?? 10 {
        stack.removeLast()
        inputNum.removeFirst()
        answer.append("-")
    }
    if stack.last ?? 0 > inputNum.first ?? 10 {
        break
    }
}
print(inputNum.count == 0 ? "\(answer.joined(separator: "\n"))" : "NO")
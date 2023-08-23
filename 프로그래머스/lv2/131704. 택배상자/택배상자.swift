import Foundation

func solution(_ order:[Int]) -> Int {
    var stack: [Int] = Array(1...order.count).reversed()
    var tmpStack: [Int] = []
    var result = 0
    
    for order in order {
        while true {
            if stack.last == order {
                stack.removeLast()
                result += 1
                break
            } else if tmpStack.last ?? 0 == order {
                tmpStack.removeLast()
                result += 1
                break
            } else if !stack.isEmpty {
                tmpStack.append(stack.removeLast())
            }
            if stack.isEmpty && tmpStack.last ?? 0 != order {
                return result
            }
        }
    }
    return result
}
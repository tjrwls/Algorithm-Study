import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var checkbugger: [Int] = []
    var answer: Int = 0
    
    for element in ingredient {
        checkbugger.append(element)
        if checkbugger.count >= 4 {
            let checkIndex = checkbugger.count
            if checkbugger[(checkIndex - 4)...checkIndex - 1] == [1, 2, 3, 1] {
                // checkbugger = checkbugger.dropLast(4)
                checkbugger = Array(checkbugger[0..<(checkIndex - 4)])
                answer += 1
            }
        }
    }
    return answer 
}
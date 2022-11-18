import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var answer: String = ""
    var leftcd: [Int] = [0, 0]
    var rightcd: [Int] = [0, 2]
    
    for index in numbers {
        switch index {
        case 1, 4, 7 :
            leftcd = [ (10 - index) / 3, 0]
            answer.append("L")
        case 3, 6, 9 :
            rightcd = [(12 - index) / 3, 2]
            answer.append("R")
        default :
            let indexcd: [Int] = index == 0 ? [0, 1] : [(11 - index) / 3, 1]
            var leftdt: Int = abs(leftcd[0] - indexcd[0]) + abs(leftcd[1] - indexcd[1])
            var rightdt: Int = abs(rightcd[0] - indexcd[0]) + abs(rightcd[1] - indexcd[1])
            
            if leftdt > rightdt {
                rightcd = indexcd
                answer.append("R")
            } else if leftdt < rightdt {
                leftcd = indexcd
                answer.append("L")
            } else {
                if hand == "left"{
                    leftcd = indexcd
                    answer.append("L")
                } else {
                    rightcd = indexcd
                    answer.append("R")
                }
            }
        }
    }
            
    return answer
}
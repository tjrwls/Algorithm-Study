import Foundation

func solution(_ n:Int) -> [Int] {
    var answer: [[Int]] = Array(1...n).map{Array(repeating: 0, count: $0)}   
    var point = (0, 0)
    var num = 1
    var direction = 0
    let endNum = (1...n).reduce(0, +)
    answer[0][0] = 1
    while num < endNum {
        switch direction {
            case 0:
                if point.0 + 1 < n && answer[point.0 + 1][point.1] == 0 {
                    point.0 += 1
                } else {
                    direction = 1
                    point.1 += 1
                }
            case 1:
                if point.1 + 1 < n && answer[point.0][point.1 + 1] == 0 {
                    point.1 += 1
                } else {
                    direction = 2
                    point.0 -= 1
                    point.1 -= 1
                }
            default:
                if answer[point.0 - 1][point.1 - 1] == 0 {
                    point.0 -= 1
                    point.1 -= 1
                } else {
                    direction = 0
                    point.0 += 1
                }
        }
        num += 1
        answer[point.0][point.1] = num
    }
    return answer.reduce([], +)
}
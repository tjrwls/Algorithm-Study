import Foundation

func solution(_ n:Int) -> Int {
    var answer: [Int] = [1, 2]
    if n > 2 {
        for index in 2...n {
            answer.append((answer[index - 2] + answer[index - 1]) % 1234567)
        }
    }
    return answer[n - 1]
}
import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var answer: [Int] = []
    var answerCount: Int = 0
    var board: [[Int]] = board
    for move in moves {
        for index in 0...(board[0].count - 1) {
            
            if board[index][move - 1] != 0 {
                if board[index][move - 1] == answer.last{
                    answer.removeLast()
                    answerCount += 2
                } else {
                    answer.append(board[index][move - 1])
                }
                board[index][move - 1] = 0
                break
            }
        }
    }
    return answerCount
}
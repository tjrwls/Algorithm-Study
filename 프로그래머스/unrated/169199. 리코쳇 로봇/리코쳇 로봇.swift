import Foundation

func solution(_ board: [String]) -> Int {
    let board = board.map{$0.map{String($0)}}
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    let startPoint = findStartPoint(board)
    var queue = [startPoint]
    var check : [Int : Bool] = [:]
    var answer = 0
    
    check[(startPoint.0 * board[0].count) + startPoint.1] = true
    while !queue.isEmpty {
        for _ in 0..<queue.count {
            let deque = queue.removeFirst()
            for index in 0...3 {
                var movePoint = (deque.0 + dy[index], deque.1 + dx[index])
                while movePoint.0 >= 0 && movePoint.0 < board.count &&
                        movePoint.1 >= 0 && movePoint.1 < board[0].count {
                    if board[movePoint.0][movePoint.1] == "D" {
                        break
                    } else {
                        movePoint.0 += dy[index]
                        movePoint.1 += dx[index]
                    }
                }
                
                movePoint.0 -= dy[index]
                movePoint.1 -= dx[index]
                
                if !(check[(movePoint.0 * board[0].count) + movePoint.1] ?? false) && board[movePoint.0][movePoint.1] != "D" {
                    if board[movePoint.0][movePoint.1] == "G" {
                        return answer + 1
                    } else {
                        check[(movePoint.0 * board[0].count) + movePoint.1] = true
                        queue.append(movePoint)
//                        print(queue)
                    }
                }
            }
        }
        answer += 1
    }
    return -1
}

func findStartPoint(_ board: [[String]]) -> (Int, Int) {
    for outIndex in (0..<board.count) {
        for inIndex in (0..<board[0].count) {
            if board[outIndex][inIndex] == "R" {
                return (outIndex, inIndex)
            }
        }
    }
    return (0, 0)
}
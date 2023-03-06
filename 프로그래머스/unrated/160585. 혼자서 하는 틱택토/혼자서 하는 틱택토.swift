import Foundation

func solution(_ board:[String]) -> Int {
    var count :[Int] = [0, 0]
    for line in board {
        for element in line {
            if "O" == element {
                count[0] += 1
            } else if "X" == element {
                count[1] += 1
            }
        }
    }
    
    if count[0] < count[1] || count[0] >= (count[1] + 2) {
        return 0
    } else if count[0] == count[1] && checkWin(board: board, element: "O"){
        return 0
    } else if count[0] > count[1] && checkWin(board: board, element: "X") {
        return 0
    }
    
    return 1
}

func checkWin(board: [String], element: String) -> Bool {
    let board = board.map{$0.map{String($0)}}
    let checkElement = "\(element)\(element)\(element)"
    if board[0][0] + board[1][1] + board[2][2] == checkElement {
        return true
    } else if board[0][2] + board[1][1] + board[2][0] == checkElement {
        return true
    } else {
        for index in 0...2 {
            if board[index][0] + board[index][1] + board[index][2] == checkElement {
                return true
            } else if board[0][index] + board[1][index] + board[2][index] == checkElement {
                return true
            }
        }
    }
    return false
}
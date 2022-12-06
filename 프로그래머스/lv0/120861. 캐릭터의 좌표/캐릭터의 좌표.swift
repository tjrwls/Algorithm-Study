import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var coordinate = [0, 0]
    
    for index in keyinput {
        switch index {
            case "right":
                coordinate[0] += (coordinate[0] < (board[0] / 2)) ?  1 : 0
            case "left":
                 coordinate[0] -= (coordinate[0] > -(board[0] / 2)) ?  1 : 0
            case "up":
                coordinate[1] += (coordinate[1] < (board[1] / 2)) ?  1 : 0
            case "down":
                coordinate[1] -= (coordinate[1] > -(board[1] / 2)) ?  1 : 0
            default:
                break
        }
    }
    
    return coordinate
}
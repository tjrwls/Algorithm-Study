import Foundation

func solution(_ dirs:String) -> Int {
    var x = 6
    var y = 6
    var rst = 0
    var check: [[Set<Int>]] = Array(repeating: Array(repeating: [], count: 12), count: 12)
    
    for dir in dirs.map({String($0)}) {
        switch dir {
        case "U":
            if x < 11 {
                if !(check[x][y].contains(0)) {
                    check[x][y].insert(0)
                    check[x + 1][y].insert(1)
                    rst += 1
                }
                x += 1
            }
        case "D":
            if x > 1 {
                if !(check[x][y].contains(1)) {
                    check[x][y].insert(1)
                    check[x - 1][y].insert(0)
                    rst += 1
                }
                x -= 1
            }
        case "L":
            if y > 1 {
                if !(check[x][y].contains(2)) {
                    check[x][y].insert(2)
                    check[x][y - 1].insert(3)
                    rst += 1
                }
                y -= 1
            }
        case "R":
            if y < 11 {
                if !(check[x][y].contains(3)) {
                    check[x][y].insert(3)
                    check[x][y + 1].insert(2)
                    rst += 1
                }
                y += 1
            }
        default:
            break
        }
    }
    return rst
}
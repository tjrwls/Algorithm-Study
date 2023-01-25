import Foundation
let inputNum = Int(readLine()!)! - 1
    var addFront: Bool = true
    var frontNum: Int = 0
    var backNum: Int = 0
    
switch inputNum {
case 0:
    print("666")
default:
    for _ in 1...inputNum {
        if frontNum % 1000 == 666 {
            backNum += 1
            if backNum == 1000 {
                frontNum = frontNum / 1000 * 1000 + 667
                backNum = 0
            }
        } else if frontNum % 100 == 66{
            backNum += 1
            if backNum == 100 {
                frontNum = frontNum / 100 * 100 + 67
                backNum = 0
            }
        } else if frontNum % 10 == 6 {
            backNum += 1
            if backNum == 10 {
                frontNum = frontNum / 10 * 10 + 7
                backNum = 0
            }
        } else {
            if frontNum % 10 == 6 {
                addFront = false
                frontNum = frontNum / 10
                backNum = backNum * 10 + 6
            }
            if backNum % 10 == 9 {
                addFront = true
                frontNum = frontNum * 10 + 6
                backNum = backNum / 10
            }
            if addFront {
                frontNum += 1
            } else {
                backNum += 1
            }
        }
    }
    var zeroStr = ""
    if frontNum % 1000 == 666 {
        frontNum = frontNum / 1000
        if backNum == 0 {
            zeroStr = "000"
        } else if backNum < 10 {
            zeroStr = "00"
        } else if backNum < 100 {
            zeroStr = "0"
        }
    } else if frontNum % 100 == 66 {
        frontNum /= 100
        if backNum == 0 {
            zeroStr = "00"
        } else if backNum < 10 {
            zeroStr = "0"
        }
    } else if frontNum % 10 == 6 {
        frontNum /= 10
        if backNum == 0{
            zeroStr = "0"
        }
    }
    let answer = (frontNum == 0 ? "" : String(frontNum)) + "666" + zeroStr + (backNum == 0 ? "" : String(backNum))
    print(answer)
}
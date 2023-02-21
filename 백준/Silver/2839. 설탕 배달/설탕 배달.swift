import Foundation

var checkNum = Int(readLine()!)!
var answer = 0

while (checkNum % 3) != 0 || checkNum > 14 {
    checkNum -= 5
    answer += 1
}

if checkNum % 3 != 0 || checkNum < 0 {
    print("-1")
} else {
    print(answer + checkNum / 3)
}

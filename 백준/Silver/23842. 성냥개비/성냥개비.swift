import Foundation

let num = Int(readLine()!)!
print(solution(num))
func solution(_ num: Int) -> String {
    for index in 0...1188 {
        let numArr: [Int] = [(index / 1000) % 10, (index / 100) % 10, (index / 10) % 10, index % 10]
        let resultNum: Int = (numArr[0] + numArr[2]) * 10 + numArr[1] + numArr[3]
        let resultArr: [Int] = [resultNum / 10, resultNum % 10]
        var checkNum: Int = 0
        for element in numArr + resultArr {
            switch(element) {
            case 0:
                checkNum += 6
            case 1:
                checkNum += 2
            case 2:
                checkNum += 5
            case 3:
                checkNum += 5
            case 4:
                checkNum += 4
            case 5:
                checkNum += 5
            case 6:
                checkNum += 6
            case 7:
                checkNum += 3
            case 8:
                checkNum += 7
            default:
                checkNum += 6
            }
        }
        if checkNum == (num - 4){
            return "\(numArr[0])\(numArr[1])+\(numArr[2])\(numArr[3])=\(resultArr[0])\(resultArr[1])"
        }
    }
    return "impossible"
}
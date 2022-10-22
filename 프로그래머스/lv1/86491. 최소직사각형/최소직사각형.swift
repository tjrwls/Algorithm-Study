import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var firstNum: Int = 0
    var secondNum: Int = 0
    for element in sizes{
        firstNum = max(firstNum, element.max()!)
        secondNum = max(secondNum, element.min()!)
    }
    return firstNum * secondNum
}
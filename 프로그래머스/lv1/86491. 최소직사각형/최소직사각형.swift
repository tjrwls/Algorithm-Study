import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var firstNum: Int = 0
    var secondNum: Int = 0
    
    for element in sizes{
        if element[0] > element[1]{
            firstNum = firstNum > element[0] ? firstNum : element[0]
            secondNum = secondNum > element[1] ? secondNum : element[1]
        } else {
            firstNum = firstNum > element[1] ? firstNum : element[1]
            secondNum = secondNum > element[0] ? secondNum : element[0]
        }
    }
    return firstNum * secondNum
    
}
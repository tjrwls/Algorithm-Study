import Foundation

func solution(_ s:String) -> Int {
    var countX: Int = 0
    var countChar: Int = 0
    var answerCount: Int = 0
    var firstChar = s.first!
    
    for index in s {
        if countX == 0 {
            firstChar = index
        }
        if firstChar == index {
            countX += 1
        } else {
            countChar += 1
        }
        if countX == countChar {
            answerCount += 1
            countX = 0
            countChar = 0
        }
    }
    if countX != countChar  {
        answerCount += 1
    }
    return answerCount
}
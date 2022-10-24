import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    var pattenArray = [[1, 2, 3, 4, 5], [2, 1, 2, 3, 2, 4, 2, 5], [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]]
    var answerCount: Array<Int> = [0, 0, 0]
    var returnArray: Array<Int> = []
    var pattenIndex: Int = 0
    
    for (patten, countIndex) in zip(pattenArray, 0...2) {
        for index in 0...(answers.count - 1) {
            answerCount[countIndex] += (patten[pattenIndex] == answers[index]) ? 1 : 0
            pattenIndex = (patten.count - 1) != pattenIndex ? pattenIndex + 1 : 0            
        }
        pattenIndex = 0
    }
    
    for index in 0...2{
        if answerCount[index] == answerCount.max(){
            returnArray.append(index + 1)
        }
    }
    return returnArray
}
import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var checkArr: [String] = []
    for (index, element) in words.enumerated(){
        if index == 0 {
            checkArr.append(element)
        } else if (checkArr.contains(element) || element.first != checkArr[index - 1].last) {
            return [ index % n + 1, index / n + 1]
        } else {
        checkArr.append(element)
        }
    }
    return [0, 0]
}
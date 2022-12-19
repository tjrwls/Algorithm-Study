import Foundation

func solution(_ s:String) -> Bool {
    var answer = 0
    
    for element in s {
        answer += (element == ")" ? -1 : 1)
        if answer < 0 { return false }
    }
    
    return answer == 0 ? true : false
}
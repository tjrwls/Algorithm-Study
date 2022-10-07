import Foundation

func solution(_ s:String) -> Bool {
    var answer: Int = 0
    for index in s{
        if index == "p" || index == "P"{
            answer += 1
            
        } else if index == "y" || index == "Y"{
            answer -= 1
        }
    }
    return answer == 0 ? true : false
}
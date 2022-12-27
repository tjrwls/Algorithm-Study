import Foundation

func solution(_ s:String) -> [Int] {
    var str: String = s
    var answer: [Int] = [0, 0]
    var deleteCount: Int = 0
    while(str != "1"){
        for element in str {
            if String(element) == "0" {
                deleteCount += 1
            }
        }
        str = String(str.count - deleteCount, radix: 2)
        answer[1] += deleteCount
        deleteCount = 0
        answer[0] += 1
    }
    return answer
}
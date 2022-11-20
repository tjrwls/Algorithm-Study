import Foundation

func solution(_ dartResult:String) -> Int {
    var answer: [Int] = []
    var dartResultArr : [String] = []
    var index: Int = -1
    
    if dartResult.contains("10"){
        dartResultArr = dartResult.components(separatedBy: "10")
        var array: [String] = []
        for element in dartResultArr{
            array += element.map{String($0)} + ["10"]
        }
        array.removeLast()
        dartResultArr = array
    } else {
        dartResultArr = dartResult.map{String($0)}
    }
    
    for element in dartResultArr {
        switch element {
        case "0"..."9", "10" :
            index += 1
            answer.append(Int(element)!)
        case "D":
            answer[index] *= answer[index]
        case "T":
            answer[index] *= answer[index] * answer[index]
        case "*": 
            if index == 0 { 
                answer[index] *= 2
            } else {
                answer[index - 1] *= 2
                answer[index] *= 2
            }
        case "#": 
            answer[index] = -answer[index]
        default:
            break
        }
    }
    return answer.reduce(0, +)
}
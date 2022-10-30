import Foundation

func solution(_ new_id:String) -> String {
    var answer: String = ""
    var dotCheck: Bool = true
    for charOfId in new_id.lowercased() {
        switch charOfId {
        case "0"..."9", "a"..."z", "-", "_":
            answer += "\(charOfId)"
            dotCheck = true
        case ".":
            if dotCheck {
                answer += "\(charOfId)"
                dotCheck = false
            }
        default:
            break
        }
    }
    if answer == "" || answer == "."{
     return "aaa"
    } else{
        if answer.first! == "." {
            answer.removeFirst()
        }
        if answer.last! == "." {
            answer.removeLast()
        }
        switch answer.count {
        case 1: answer += answer + answer
        case 2: answer += "\(answer.last!)"
        case 3...15: break
        default:
            answer = String(answer[answer.startIndex...answer.index(answer.startIndex, offsetBy: 14)])
            if answer.last! == "." {
                answer.removeLast()
            }
        }
    }
    return answer
}
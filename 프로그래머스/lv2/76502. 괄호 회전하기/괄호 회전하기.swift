import Foundation

func solution(_ s:String) -> Int {
    var str: String = s
    var answer: [Int] = []
    
    func moveLeft() {
        str.append(str.removeFirst())
    }
    
    func check() {
        var tempStr = ""
        var count = 0
        for char in str {
            switch char {
            case "(":
                tempStr.append("(")
            case ")":
                if tempStr.last == "(" {
                    tempStr.removeLast()
                    if tempStr.isEmpty {
                        count += 1
                    }
                } else { return }
            case "{":
                tempStr.append("{")
            case "}":
                if tempStr.last == "{" {
                    tempStr.removeLast()
                    if tempStr.isEmpty {
                        count += 1
                    }
                } else { return }
            case "[":
                tempStr.append("[")
            case "]":
                if tempStr.last == "[" {
                    tempStr.removeLast()
                    if tempStr.isEmpty {
                        count += 1
                    }
                } else { return }
            default:
                break
            }
        }
        if tempStr.isEmpty {
            answer.append(count)
        } 
    }

    for _ in 0...str.count {
        moveLeft()
        check()
    }
            
    return answer.max() ?? 0
}

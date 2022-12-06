import Foundation

func solution(_ polynomial:String) -> String {
    var num: Int = 0
    var xnum: Int = 0
    var temp: String = "0"
    var answer: String = ""
    
    for index in polynomial{
        switch index {
            case "0"..."9":
                temp.append(index)
            case "x":
                xnum += temp == "0" ? 1 : Int(temp)!
                temp = "0"
            case "+":
                num += Int(temp)!
                temp = "0"
            default:
                break
        }
    }
    num += temp != "0" ? Int(temp)! : 0

    if xnum == 0 {
        return "\(num)"
    } else if xnum == 1 {
        answer += num == 0 ? "x" : "x + \(num)"
    } else {
        answer += num == 0 ? "\(xnum)x" : "\(xnum)x + \(num)"
    }
    return answer
}
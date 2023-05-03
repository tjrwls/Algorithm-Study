import Foundation

func solution(_ s:String) -> [Int] {
    var nums: [[Int]] = []
    var check: Set<Int> = []
    var answer: [Int] = []
    func takeNum() {
        var tmpStr = ""
        var tmpNums: [Int] = []
        var s = s.replacingOccurrences(of: "},", with: "}").map{String($0)}
        s.removeLast()
        for str in s {
            if str != "{" && str != "}" && str != "," {
                tmpStr += str
            } else if str == "," {
                tmpNums.append(Int(tmpStr)!)
                tmpStr = ""
            } else if str == "}" {
                tmpNums.append(Int(tmpStr)!)
                nums.append(tmpNums)
                tmpNums = []
                tmpStr = ""
            }
        }
    }
    takeNum()
    nums.sort{$0.count < $1.count}
    
    for numArr in nums {
        for num in numArr {
            if !check.contains(num) {
                check.insert(num)
                answer.append(num)
            }
        }
    }    

    return answer
}

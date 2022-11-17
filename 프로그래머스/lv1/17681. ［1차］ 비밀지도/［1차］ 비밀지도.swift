import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    for (i , j) in zip(arr1, arr2) {
        var numString = String(Int(String(i, radix: 2))! + Int(String(j, radix: 2))!)
        while numString.count < n {
            numString = " " + numString
        }
        
        numString = numString.replacingOccurrences(of: "0", with: " ")
        numString = numString.replacingOccurrences(of: "1", with: "#")
        numString = numString.replacingOccurrences(of: "2", with: "#")
        answer.append(numString)
    }
    
    return answer
}
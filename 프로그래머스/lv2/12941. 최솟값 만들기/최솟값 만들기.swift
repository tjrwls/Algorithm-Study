import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    var aArr: [Int] = A.sorted(by: <)
    var bArr: [Int] = B.sorted(by: >)
    var answer: Int = 0
    for index in 0..<A.count {
        answer += aArr[index] * bArr[index]
    }
    return answer
}
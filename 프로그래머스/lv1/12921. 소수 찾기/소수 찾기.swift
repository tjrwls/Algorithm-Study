import Foundation

func solution(_ n:Int) -> Int {
    var answerArray = Array(2...n)
    for i in answerArray {
        if i > Int(sqrt(Double(n))) {
            print(i)
            break
        }
        for j in stride(from: (i * i - 2), to: n - 1, by: i) {
            answerArray[j] = 0
        }
    }
    return answerArray.filter{$0 != 0}.count
}
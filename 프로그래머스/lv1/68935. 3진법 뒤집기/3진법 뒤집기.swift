import Foundation

func solution(_ n:Int) -> Int {
    var answer: String = ""
    var num: Int = n
    var sum: Int = 0
    while num != 0 {
        answer += String(num % 3)
        num /= 3
    }
    
    for i in answer {
        sum += Int("\(i)") ?? 0
        sum *= 3
    }
    return sum / 3
}

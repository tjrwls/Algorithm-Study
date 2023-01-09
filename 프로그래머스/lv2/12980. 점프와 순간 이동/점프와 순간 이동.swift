import Foundation

func solution(_ n:Int) -> Int {
    var num: Int = n
    var answer: Int = 0
    
    while num != 0 {
        if num % 2 == 0{
            num /= 2
        } else {
            num -= 1
            answer += 1
        }
    }
    
    return answer
}
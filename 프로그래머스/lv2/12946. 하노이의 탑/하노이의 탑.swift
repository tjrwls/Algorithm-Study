import Foundation

func solution(_ n:Int) -> [[Int]] {
    var answer: [[Int]] = []

    func move(n: Int, start: Int, mid: Int, end: Int) {
        if n == 1 {
            answer.append([start, end])
            return
        }
        move(n: n - 1, start: start, mid: end, end: mid)
        
        answer.append([start, end])
        
        move(n: n - 1, start: mid, mid: start, end: end)
    }
    
    move(n: n, start: 1, mid: 2, end: 3)
    
    return answer
}
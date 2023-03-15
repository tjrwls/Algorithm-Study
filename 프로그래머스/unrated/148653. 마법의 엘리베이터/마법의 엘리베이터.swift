import Foundation

func solution(_ storey:Int) -> Int {
    var storey = storey
    var answer = 0
    while storey != 0 {
        let num = storey % 10
        if num > 5 {
            answer += 10 - num
            storey += 10
        } else if num == 5 && (storey % 100) / 10 >= 5 {
            answer += 10 - num
            storey += 10
        }
        else {
            answer += num
        }
        storey /= 10
    }
    return answer
}
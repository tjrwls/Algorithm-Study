import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var answer: Int = 0
    var count: Int = 0
    for num in left...right{
        count = 0
        for i in 1...num {
            if num % i == 0 {
                count += 1
            }
        }
        answer = count % 2 == 0 ? answer + num : answer - num
    }
    return answer
}
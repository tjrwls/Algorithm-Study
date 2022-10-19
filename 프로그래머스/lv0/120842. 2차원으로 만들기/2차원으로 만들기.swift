import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var answer: [[Int]] = Array(repeating: Array(repeating: 0 , count: n), count: num_list.count / n)
    for i in 0...(num_list.count / n - 1) {
        for j in 0...n - 1{
            answer[i][j] = num_list[(i * n) + j]
        }
    }
    return answer
}
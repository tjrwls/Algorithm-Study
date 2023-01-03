func solution(_ n:Int) -> Int {
    var answer: [Int] = Array(repeating: 0, count: n + 1)
    answer[1] = 1
    for index in 2...n {
        answer[index] = (answer[index - 1] % 1234567 + answer[index - 2] % 1234567) % 1234567
    }
    return answer[n]
}
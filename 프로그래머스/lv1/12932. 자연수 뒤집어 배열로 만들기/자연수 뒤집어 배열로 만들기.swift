func solution(_ n:Int64) -> [Int] {
    var answer: Array<Int> = []
    var number: Int = Int(n)
    while number != 0 {
        answer.append(number % 10)
        number /= 10
    }
    return answer
}
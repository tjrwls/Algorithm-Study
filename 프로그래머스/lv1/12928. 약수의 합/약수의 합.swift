func solution(_ n:Int) -> Int {
    var answer: Int = (n == 0) ? 0 : Array(1...n).filter{n % $0 == 0}.reduce(0, +)
    return answer
}
func solution(_ n:Int, _ m:Int) -> [Int] {
    var maxNum = Array(1...min(n, m)).filter{ n % $0 == 0 && m % $0 == 0}
    return [maxNum.last!, n * m / maxNum.last!]
}
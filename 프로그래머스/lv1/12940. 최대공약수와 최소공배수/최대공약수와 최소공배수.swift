func solution(_ n:Int, _ m:Int) -> [Int] {
    var minNum = Array(1...min(n, m)).filter{ n % $0 == 0 && m % $0 == 0}
    return [minNum.last!, n * m / minNum.last!]
}
func solution(_ n:Int) -> String {
    let answer = String(repeating: "수박", count: n / 2)
    return n % 2 == 0 ? answer : answer + "수"
}
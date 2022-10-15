func solution(_ arr:[Int]) -> [Int] {
    var answer: Array<Int> = arr
    answer.remove(at: answer.firstIndex(of: answer.min() ?? 0) ?? 0)
    return answer != [] ? answer : [-1]
}
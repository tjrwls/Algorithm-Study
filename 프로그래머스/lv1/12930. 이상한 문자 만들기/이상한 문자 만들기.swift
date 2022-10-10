func solution(_ s:String) -> String {
    var answer: String = ""
    var count: Int = 0
    for char in s {
        answer += count % 2 == 0 ? char.uppercased() : char.lowercased()
        count = char == " " ? 0 : count + 1
    }
    return answer
}
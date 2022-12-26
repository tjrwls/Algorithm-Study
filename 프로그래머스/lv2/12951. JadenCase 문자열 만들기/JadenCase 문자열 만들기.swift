func solution(_ s:String) -> String {
    var isAlphabet: Bool = false
    var answer: String = ""
    for element in s {
        switch element {
        case "a"..."z", "A"..."Z":
            answer += isAlphabet ? String(element.lowercased()) : String(element.uppercased())
            print(element.lowercased())
            isAlphabet = true
        case " ":
            answer += String(element)
            isAlphabet = false
        default:
            answer += String(element)
            isAlphabet = true
        }
    }
    return answer
}
func solution(_ s:String) -> String {
    var isNumber: Bool = false
    var isMinus: Bool = false
    var answer: [Int] = []
    for element in s {
        if element.isNumber {
            let num = isMinus ? -1 * (Int(String(element)) ?? 0) : Int(String(element)) ?? 0
            if isNumber {
                answer[answer.count - 1] = answer[answer.count - 1] * 10 + num
            } else{
                answer.append(Int(String(num)) ?? 0)
            }
            isNumber = true
        } else {
            if element == "-" {
                isMinus = true
            } else{
                isMinus = false
            }
            isNumber = false
        }
    }
    return "\(answer.min() ?? 0) \(answer.max() ?? 0)"
}
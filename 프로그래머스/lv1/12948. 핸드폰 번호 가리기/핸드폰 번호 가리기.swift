func solution(_ phone_number:String) -> String {
    var answer = Array(phone_number)
    if phone_number.count != 4{
        for index in 0...(phone_number.count-5) {
            answer[index] = "*"
        }
    }
    return String(answer)
}
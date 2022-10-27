func solution(_ s:String, _ n:Int) -> String {
    var answer: String = ""
    for element in s.unicodeScalars {
        let strToUnicodeScala = UnicodeScalar(element.value + UInt32(n))!
        if element == " " {
            answer += " "
        }
        else if (element <= "Z"  && strToUnicodeScala > "Z") || strToUnicodeScala > "z" {
            answer += "\(UnicodeScalar(strToUnicodeScala.value - UInt32(26))!)"
        }
        else {
            answer += "\(strToUnicodeScala)"
        }
    }
    return answer
}
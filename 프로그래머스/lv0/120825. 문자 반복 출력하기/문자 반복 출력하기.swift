import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var answer: String = ""
    for i in my_string {
        for j in 1...n {
            answer += String(i)
        }
    }
    return answer
}
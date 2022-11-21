import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var result: Int = 0
    var num: Int = n
    while num >= a {
        result += num / a * b
        num = num % a + num / a * b
    }
    return result
}
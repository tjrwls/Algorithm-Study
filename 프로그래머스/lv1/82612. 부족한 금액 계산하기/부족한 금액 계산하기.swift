import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer: Int64 = Int64(money)
    for playCount in 1...count {
     answer -= Int64(price * playCount)
    }
    
    return answer > 0 ? 0 : -answer
}
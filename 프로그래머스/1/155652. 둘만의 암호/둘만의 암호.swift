import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var result = ""
    let arr = Array(97...122).map{Character(UnicodeScalar($0)!)}.filter{skip.firstIndex(of: $0) == nil}
    for char in s {
        result.append(arr[(arr.firstIndex(of: char)! + index) % (26 - skip.count)])
    }
    return result
}
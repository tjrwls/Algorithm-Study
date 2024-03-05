import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var t = t.map{$0}
    var result = 0
    for idx in 0...(t.count - p.count) {
        if Int([t[idx...(idx + p.count - 1)]].reduce("", +))! <= Int(p)! {
            result += 1
        }
    }
    return result
}
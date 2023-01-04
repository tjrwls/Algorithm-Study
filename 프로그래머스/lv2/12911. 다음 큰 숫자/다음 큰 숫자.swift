import Foundation

func solution(_ n:Int) -> Int {
    let count: Int = String(n, radix: 2).filter{ $0 == "1" }.count
    var num: Int = n + 1
    while (count != String(num, radix: 2).filter{ $0 == "1"}.count) {
        num += 1
    }
    return num
    //
}
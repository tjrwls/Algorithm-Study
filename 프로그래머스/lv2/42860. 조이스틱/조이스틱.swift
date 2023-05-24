import Foundation

func solution(_ name:String) -> Int {
    let name = name.map({String($0)})
    func moveCount(_ name: [String]) -> Int {
        if name.filter({$0 != "A"}).isEmpty { return 0 }
        var result = 0
        var addCount = 0
        var count = 0
        var lastACount = 0
        let unicodeScalarOfA = Int(UnicodeScalar("A").value)
        for char in name.reversed() {
            if char == "A" {
                lastACount += 1
            } else { break }
        }
        for index in 0..<name.count {
            let moveCount = Int(UnicodeScalar(name[index])!.value) - unicodeScalarOfA
            result += min(abs(26 - moveCount), moveCount)
            if name[index] == "A" {
                count += 1
            } else {
                if count != 0 && index > count && index - (count * 2) + lastACount - 1 < addCount {
                    addCount = index - (count * 2) - 1
                }
                count = 0
            }
        }
        result += addCount == 0 ? (name.count - 1) - lastACount : (name.count - 1) + addCount
        return result
    }
    return min(moveCount(name), moveCount(name.reversed()) + 1)
}
import Foundation

func solution(_ elements:[Int]) -> Int {
    var result = Set(elements)
    func sumCalc(_ idx: Int,_ num: Int, _ cnt: Int) {
        let idx = idx + 1
        if cnt < elements.count {
            let num = num + elements[idx % elements.count]
            result.insert(num)
            sumCalc(idx, num, cnt + 1)
        }
    }
    for idx in 0..<elements.count {
        sumCalc(idx, elements[idx], 1)
    }
    return result.count
}
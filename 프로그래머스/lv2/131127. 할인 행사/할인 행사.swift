import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var dic: [String:Int] = [:]
    var checkDic: [String:Int] = [:]
    var tmp: [String] = []
    var repeatCount = 0
    var result = 0
    
    func checksale() -> Bool{
        for want in want where dic[want] ?? 0 > checkDic[want] ?? 0 {
            return false
        }
        return true
    }
    
    for i in 0..<want.count {
        dic[want[i]] = number[i]
    }
    for i in 0...9 {
        checkDic[discount[i], default: 0] += 1
        tmp.append(discount[i])
    }
    if checksale() {
        result += 1
    }
    while repeatCount != discount.count - 10 {
        checkDic[tmp.removeFirst()]! -= 1
        checkDic[discount[repeatCount + 10], default: 0] += 1
        tmp.append(discount[repeatCount + 10])
        if checksale() {
            result += 1
        }
        repeatCount += 1
    }
    return result
}
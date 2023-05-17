import Foundation

func solution(_ orders:[String], _ course:[Int]) -> [String] {
    let orders = orders.sorted(by: {$0.count > $1.count})
    var checkComb: [String:Int] = [:]
    var answer: [String] = []
    func makeComb(str : [String], startIndex: Int, needCount: Int, comb: String) {
        let comb = String((comb + str[startIndex]).sorted())
        if comb.count == needCount {
            checkComb[comb] = checkComb[comb] == nil ? 1 : checkComb[comb]! + 1
        }
        for index in (startIndex + 1)..<str.count {
            makeComb(str: str, startIndex: index, needCount: needCount, comb: comb)
        }
    }
    for count in course {
        for order in orders {
            if order.count == count {
                let order = String(order.sorted())
                checkComb[order] = checkComb[order] == nil ? 1 : checkComb[order]! + 1
            } else if order.count > count {
                let order = order.map{String($0)}
                for index in 0...order.count - count {
                    makeComb(str: order, startIndex: index, needCount: count, comb: "")
                }
            }
        }
        let maxCount = checkComb.values.max() ?? 0
        answer += checkComb.filter{$0.value == maxCount && $0.value >= 2}.keys
        checkComb = [:]
    }
    return answer.sorted()
}
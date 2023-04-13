import Foundation

func solution(_ cap:Int, _ n:Int, _ deliveries:[Int], _ pickups:[Int]) -> Int64 {
    var answer: Int64 = 0
    var deliveries = deliveries
    var pickups = pickups
    var boxCount: [Int] = []
    var isRemainWork: Bool {
        deliveries.isEmpty && pickups.isEmpty
    }
    func maxDirect() -> Int64 {
        return Int64(max(deliveries.count, pickups.count))
    }
    
    func deliver() {
        for index in deliveries.indices.reversed() {
            let sumBoxCount = boxCount.reduce(0, +)
            if cap - (sumBoxCount + deliveries[index]) >= 0 {
                boxCount.append(deliveries.removeLast())
            } else if cap - sumBoxCount > 0 {
                boxCount.append(cap - sumBoxCount)
                deliveries[index] -= (cap - sumBoxCount)
            }
            
            if cap == boxCount.reduce(0, +) {
                while (deliveries.last ?? -1) == 0 {
                    deliveries.removeLast()
                }
                break
            }
        }
    }
    
    func collect() {
        for index in pickups.indices.reversed() {
            let sumBoxCount = boxCount.reduce(0, +)
            if cap - (sumBoxCount + pickups[index]) >= 0 {
                boxCount.append(pickups.removeLast())
            } else if cap - sumBoxCount > 0 {
                boxCount.append(cap - sumBoxCount)
                pickups[index] -= (cap - sumBoxCount)
            }
            if cap == boxCount.reduce(0, +) {
                while (pickups.last ?? -1) == 0 {
                    pickups.removeLast()
                }
                break
            }
        }
    }
    
    while deliveries.last ?? -1 == 0 || pickups.last ?? -1 == 0 {
        if deliveries.last ?? -1 == 0 {
            deliveries.removeLast()
        }
        if pickups.last ?? -1 == 0 {
            pickups.removeLast()
        }
    }
    
    while !isRemainWork {
        answer += maxDirect() * 2
        deliver()
        boxCount = []
        collect()
        boxCount = []
    }
    
    return answer
}
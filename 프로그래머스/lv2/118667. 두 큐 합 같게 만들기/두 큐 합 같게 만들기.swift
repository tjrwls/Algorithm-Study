import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    func work(_ queue1:[Int], _ queue2:[Int]) -> Int {
        var result = 0
        var que1 = queue1
        var que2 = queue2
        var index1 = 0
        var index2 = 0
        var sum1 = Int64(queue1.reduce(0, +))
        var sum2 = Int64(queue2.reduce(0, +))
        while sum1 != sum2 {
            if sum1 > sum2 {
                let pre = que1[index1]
                que2.append(pre)
                sum1 -= Int64(pre)
                sum2 += Int64(pre)
                index1 += 1
            } else {
                let pre = que2[index2]
                que1.append(pre)
                sum1 += Int64(pre)
                sum2 -= Int64(pre)
                index2 += 1
            }
            if result > (queue1.count * 3) { return -1 }
            result += 1
        }
        return result
    }
    return min(work(queue1, queue2), work(queue2, queue1))
}

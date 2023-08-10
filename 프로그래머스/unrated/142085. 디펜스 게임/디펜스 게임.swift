import Foundation

func solution(_ n:Int, _ k:Int, _ enemy:[Int]) -> Int {
    var passNum: [Int:Int] = [:]
    var minNum = 0
    var passCount = 0
    var result = 0
    var n = n
    func findMin(_ minNum: Int) -> Int {
        for num in minNum...1000000 where 0 < passNum[num, default: 0] {
            return num
        }
        return 1000000
    }
    while 0 < n && result < enemy.count{
        let enemyNum = enemy[result]
        if passCount < k {
            passCount += 1
            passNum[enemyNum, default: 0] += 1
            if passCount == k {
                minNum = passNum.keys.min()!
            }
        } else if minNum < enemyNum {
            n -= minNum
            passNum[enemyNum, default: 0] += 1
            passNum[minNum, default: 0] -= 1
            if passNum[minNum]! == 0 {
                minNum = findMin(minNum)
            }
        } else {
            n -= enemy[result]
        }
        result += 1
    }
    return n < 0 ? result - 1 : result
}
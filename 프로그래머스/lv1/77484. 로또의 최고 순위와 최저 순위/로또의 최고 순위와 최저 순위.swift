import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var count: Int = 0
    var zeroCount: Int = lottos.filter{$0 == 0}.count
    for inIndex in 0...5{
        for outIndex in 0...5{
            count += lottos[inIndex] == win_nums[outIndex] ? 1 : 0
        }
    }
    return [ (count + zeroCount) == 0 ? 6 : (7 - count - zeroCount), count == 0 ? 6 : (7 - count)]
}
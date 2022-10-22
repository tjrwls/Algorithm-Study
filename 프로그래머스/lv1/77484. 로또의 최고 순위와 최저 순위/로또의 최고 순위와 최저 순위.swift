import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var answer: Int = lottos.filter{win_nums.contains($0)}.count
    var zeroCount: Int = lottos.filter{$0 == 0}.count
    return [(answer + zeroCount) == 0 ? 6 : 7 - (answer + zeroCount) , answer == 0 ? 6 : 7 - answer]
}
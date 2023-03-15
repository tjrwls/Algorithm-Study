import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var count: [Int : Int] = [:]
    var answer = 0
    var sum = 0
    
    for tangerine in tangerine {
        if count[tangerine] == nil {
            count[tangerine] = 1
        } else {
            count[tangerine]! += 1
        }
    }

    
    for count in count.sorted{$0.value > $1.value} {
        if k <= sum {
            break
        }
        sum += count.value
        answer += 1
    }
    
    return answer
}
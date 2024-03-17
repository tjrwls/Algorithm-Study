import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var result: [Int] = []
    var day = 0
    var idx = 0
    var cnt = 0
    while idx < progresses.count {
        if progresses[idx] + speeds[idx] * day < 100 {
            day += 1
            if cnt != 0 {
                result.append(cnt)
                cnt = 0
            }
        } else {
            cnt += 1
            idx += 1
        }
    }
    result.append(cnt)
    return result
}
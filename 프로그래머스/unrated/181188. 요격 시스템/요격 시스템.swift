func solution(_ targets:[[Int]]) -> Int {
    var targets = targets.sorted{$0.last! < $1.last!}
    var answer = 0
    var nowPoint = targets.first!.last! - 1
    for target in targets {
        if nowPoint > target[1] {
            nowPoint = target[1]
        }
        if nowPoint < target[0] {
            answer += 1
            nowPoint = target[1] - 1
        }
    }
    return answer + 1
}
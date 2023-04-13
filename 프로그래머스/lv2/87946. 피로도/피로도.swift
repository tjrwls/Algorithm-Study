func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var answer: [Int] = []
    
    func explore(visitDungeons: Int, visit: [Int]) -> [Int] {
        var visit = visit
        var count: [Int] = []

        visit.append(visitDungeons)
        if visit.count == dungeons.count {
            var fatigue = 0
            var count = 0
            for visit in visit {
                if k - fatigue >= dungeons[visit][0] {
                    fatigue += dungeons[visit][1]
                    count += 1
                }
            }
            return [count]
        } else {
            for index in 0..<dungeons.count {
                if visit.firstIndex(of: index) == nil {
                    let temp = explore(visitDungeons: index, visit: visit)
                    count += temp
                }
            }
        }
        return count
    }
    
    for index in 0..<dungeons.count {
        answer += explore(visitDungeons: index, visit: [])
    }
    
    return answer.max()!
}

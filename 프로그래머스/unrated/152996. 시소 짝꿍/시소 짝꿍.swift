func solution(_ weights:[Int]) -> Int64 {
    var count: Int64 = 0
    var weightsDic: [Int:Int] = [:]
    for weight in weights {
        weightsDic[weight] = (weightsDic[weight] ?? 0) + 1
    }
    
    for weight in weights {
        if weight % 2 == 0 {
            count += Int64(weightsDic[weight/2] ?? 0)
        }
        if weight % 3 == 0 {
            count += Int64(weightsDic[weight*2/3] ?? 0)
        }
        if weight % 4 == 0 {
            count += Int64(weightsDic[weight*3/4] ?? 0)
        }
    }
    
    func comb(_ n: Int) {
        var tmp = 1
        for num in (n-1)...n {
            tmp *= num
        }
        count += Int64(tmp / 2)
    }
    
    for (_, num) in weightsDic.filter({$0.value>1}) {
        comb(num)
    }
    return count
}
func solution(_ picks:[Int], _ minerals:[String]) -> Int {
    var maps: [(Int, Int)] = []
    var picks = picks
    var answer = 0
    
    func counting() {
        var temp = 0
        var count = 0
        for mineral in minerals {
            switch mineral {
            case "diamond":
                temp += 25
            case "iron":
                temp += 5
            case "stone":
                temp += 1
            default:
                break
            }
            count += 1
            if count % 5 == 0 {
                maps.append((temp, 5))
                temp = 0
            }
        }
        if count % 5 != 0 {
            maps.append((temp, count % 5))
        }
    }
    
    counting()
    let maxDig = picks.reduce(0, +)

    while maxDig < maps.count {
        maps.removeLast()
    }
        
    for (map, count) in maps.sorted(by: >) {
        if picks[0] != 0 {
            answer += count
            picks[0] -= 1
        } else if picks[1] != 0 {
            if map == 5 || map == 25{
                answer += count
            } else {
                answer += (count - (map / 25)) + ((map / 25) * 5)
            }
            picks[1] -= 1
        } else {
            answer += map
        }
    }
    
    return answer
}

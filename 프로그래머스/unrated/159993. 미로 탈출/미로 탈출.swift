import Foundation

func solution(_ maps:[String]) -> Int {
    let maps = maps.map{$0.map{String($0)}}
    let startToLever = bfs(maps: maps, start: findChar(maps: maps, char: "S"), char: "L")
    let leverToExit = bfs(maps: maps, start: findChar(maps: maps, char: "L"), char: "E")
    if startToLever == -1 || leverToExit == -1 {
        return -1
    } else {
        return startToLever + leverToExit
    }
}

func findChar(maps: [[String]], char: String) -> (Int, Int){
    for outIndex in 0...(maps.count - 1) {
        for inIndex in 0...(maps[0].count - 1) {
            if maps[outIndex][inIndex] == char {
                return (outIndex, inIndex)
            }
        }
    }
    return (0, 0)
}

func bfs(maps: [[String]], start: (Int, Int), char: String) -> Int {
    var count = 0
    var check: [Int: Bool] = [:]
    var queue: [(Int, Int)] = []
    let dx: [Int] = [0, 0, 1, -1]
    let dy: [Int] = [1, -1, 0, 0]

    queue.append(start)
    check[start.0 * maps[0].count + start.1] = true
    
    while !queue.isEmpty {
        for _ in 0...(queue.count - 1){
            let deque = queue.removeFirst()
            if maps[deque.0][deque.1] == char {
                return count
            }
            
            for index in 0...3 {
                let point = (deque.0 + dx[index], deque.1 + dy[index])
                if point.0 >= 0 && point.0 < maps.count && point.1 >= 0 && point.1 < maps[0].count {
                    if maps[point.0][point.1] != "X" && !(check[(point.0 * maps[0].count) + point.1] ?? false) {
                        queue.append((point.0, point.1))
                        check[(point.0 * maps[0].count) + point.1] = true
                    }
                }
            }
        }
        count += 1
    }
    return -1
}
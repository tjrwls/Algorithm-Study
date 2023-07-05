import Foundation

func solution(_ maps:[String]) -> [Int] {
    let maps = maps.map{$0.map{String($0)}}
    var check: Set<Int> = []
    var result: [Int] = []
    var x = 0
    var y = 0
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    func find(_ x: Int, _ y: Int) -> Int {
        if maps[x][y] == "X" || check.contains(Int(x * maps.first!.count + y)) { return 0 }
        var count = 0
        check.insert(x * maps.first!.count + y)
        count += Int(maps[x][y])!
        for i in 0...3 where check.contains(Int(x * maps.first!.count + y)) {
            if 0 <= y + dy[i] && y + dy[i] < maps.first!.count {
                if 0 <= x + dx[i] && x + dx[i] < maps.count {
                    count += find(x + dx[i], y + dy[i])
                }
            }
        }
        return count
    }
    
    while x * y < maps.count * maps.first!.count {
        if maps[x][y] != "X" && !check.contains(x * maps.first!.count + y) {
            let num = find(x, y)
            if num != 0 { result.append(num) }
        }
        if y < maps.first!.count - 1{
            y += 1
        } else if x < maps.count - 1{
            y = 0
            x += 1
        } else {
            break
        }
        
    }
    return result.isEmpty ? [-1] : result.sorted(by: <)
}
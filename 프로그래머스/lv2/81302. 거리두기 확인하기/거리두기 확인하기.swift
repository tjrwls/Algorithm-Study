import Foundation

func solution(_ places:[[String]]) -> [Int] {
    var result: [Int] = []
    var visit: Set<Int> = []
    let places = places.map{$0.map{$0.map{String($0)}}}
    let dx = [1, -1, 0, 0]
    let dy = [0, 0, -1, 1]
    func isValud(_ x: Int, _ y: Int) -> Bool {
        if x >= 0 && x < places.first!.count
            && y >= 0 && y < places.first!.first!.count { return true }
        
        return false
    }
    func calcDistance(_ x: Int, _ y: Int, _ k: Int, nextSearch: Bool) -> Bool{
        for i in 0...3 {
            visit.insert(x * 5 + y)
            if !isValud(x + dx[i], y + dy[i]) || visit.contains((x + dx[i]) * 5 + y + dy[i]) { continue }
            let nextCell = places[k][x + dx[i]][y + dy[i]]
            if nextCell == "P" {
                return false
            } else if nextCell == "O" && nextSearch {
                if !calcDistance(x + dx[i], y + dy[i], k, nextSearch: false) {
                    return false
                }
            }
        }
        return true
    }
    for k in 0..<places.count {
        visit = []
        var nextRepeat = true
        for i in 0..<5 {
            for j in 0..<5 where places[k][i][j] == "P" {
                if !calcDistance(i, j, k, nextSearch: true ) {
                    result.append(0)
                    nextRepeat = false
                    break
                }
            }
            if !nextRepeat { break }
        }
        if !nextRepeat { continue }
        result.append(1)
    }
    return result
}
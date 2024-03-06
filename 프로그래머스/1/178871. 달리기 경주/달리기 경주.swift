import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var result = Dictionary(uniqueKeysWithValues: zip(players, 0...players.count))
    var order = Dictionary(uniqueKeysWithValues: zip(0...players.count, players))
    for calling in callings {
        let idx = result[calling]!
        let name = order[idx - 1]!
        result[calling]! -= 1
        result[name]! += 1
        order[idx]! = name
        order[idx - 1]! = calling
    }
    return result.sorted{$0.value < $1.value}.map{$0.key}
}
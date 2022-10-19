import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var dic = Dictionary(uniqueKeysWithValues: zip(emergency.sorted(by: > ), 1...emergency.count))
    return emergency.map{Int(dic[$0] ?? 0)}
}
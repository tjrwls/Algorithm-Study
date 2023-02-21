import Foundation

let num = Int(readLine()!)!
var answer: [[Int]] = []
for _ in 1...num {
    answer.append(readLine()!.split(separator: " ").map{Int($0)!})
}
answer.sort {($0[1], $0[0]) < ($1[1], $1[0])}
for index in 0...(num - 1) {
    print("\(answer[index][0]) \(answer[index][1])")
}
import Foundation
let inputNum = Int(String(readLine()!))!
var answer: [Int] = []

for _ in 1...inputNum {
    answer.append(Int(String(readLine()!))!)
}
answer.sort()

print(answer.map{String($0)}.joined(separator: "\n"))

import Foundation

let inputNums = readLine()!.split(separator: " ").map{Int($0)!}
var length: [Int] = []
var max = 0
var mid = 0
var min = 1
var answer = 0

for _ in 1...inputNums[0] {
    let num = Int(readLine()!)!
    length.append(num)
}
max = length.reduce(0, +) / inputNums[1]

while min <= max {
    mid = (min + max) / 2
    if length.map({$0 / mid}).reduce(0, +) >= inputNums[1] {
        answer = mid
        min = mid + 1
    } else {
        max = mid - 1
    }
}

print(answer)

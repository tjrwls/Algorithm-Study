import Foundation

let n = Int(readLine()!)!
var answer: [Int] = []
var count: [Int:Int] = [:]
for _ in 0..<n {
    let num = Int(readLine()!)!
    answer.append(num)
        count[num] = (count[num] ?? 0) + 1
}
let sum = answer.reduce(0, +)
answer = answer.sorted(by: >)
print(Int(round(Double(sum) / Double(n))))
print(answer[(n / 2)])
count = count.filter {$0.value == count.values.max()}
if count.count != 1 {
    let countTuple = count.sorted {$0.key < $1.key}
    print(countTuple[1].key)
} else {
    print(count.first?.key ?? 0)
}
print(answer[0] - answer[n - 1])
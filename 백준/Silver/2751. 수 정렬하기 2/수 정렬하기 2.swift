import Foundation
let inputNum = Int(String(readLine()!))!
var answer: [Int] = []

for _ in 1...inputNum {
    answer.append(Int(String(readLine()!))!)
}
answer.sort()
for element in answer {
    print(element)
}
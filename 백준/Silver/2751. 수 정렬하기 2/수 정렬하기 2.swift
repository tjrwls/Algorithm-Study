import Foundation
let inputNum = Int(readLine()!)!
var answer: [Int] = []

for _ in 1...inputNum {
    answer.append(Int(readLine()!)!)
}
answer.sort()
for element in answer {
    print(element)
}
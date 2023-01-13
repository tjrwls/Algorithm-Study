import Foundation

let inputNum: [Int] = readLine()!.components(separatedBy: " ").map{Int($0)!}
let m = inputNum[1]
let timeArr = readLine()!.components(separatedBy: " ").map{Int($0)!}.sorted(by: >)
var answer = Array(repeating: 0, count: m)
for element in timeArr{
    answer[answer.firstIndex(of: answer.min()!)!] += element
}
print(answer.max()!)
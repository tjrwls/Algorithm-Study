import Foundation

var inputNum = Int(readLine()!) ?? 0
var inputArr: [String] = []
for _ in 0..<inputNum {
    inputArr.append(readLine()!)
}
inputArr = Array(Set(inputArr))
inputArr.sort { ($0.count, $0) < ($1.count, $1) }

for element in inputArr {
    print(element)
}
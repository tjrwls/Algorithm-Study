import Foundation
var inputNum = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
inputNum[0] = inputNum[0] == 1 ? 2 : inputNum[0]
var numArr: [Int] = Array(0...inputNum[1])
for outIndex in 2...inputNum[1] {
    if outIndex < inputNum[0] {
        numArr[outIndex] = 0
    }
    for inIndex in stride(from: outIndex * outIndex, through: inputNum[1], by: outIndex) {
        numArr[inIndex] = 0
    }
}
for index in 2..<numArr.count {
    if numArr[index] != 0 {
        print(numArr[index])
    }
}
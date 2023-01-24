import Foundation

let inputArr: [Int] = readLine()!.components(separatedBy: " ").map{Int($0) ?? 0}
let xDistance: Int = min(abs(inputArr[2] - inputArr[0]), inputArr[0])
let yDistance: Int = min(abs(inputArr[3] - inputArr[1]), inputArr[1])
print(min(xDistance, yDistance))

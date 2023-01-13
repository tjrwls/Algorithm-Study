import Foundation

let str = readLine()?.split(separator: " ")
let count = (Int(str?.first ?? "") ?? 0) - 1
var arr: [[String]] = []
var answer: String = ""

for _ in 0...count{
    arr.append(readLine()?.map{String($0)} ?? [])
}

for outIndex in 0...count {    
    for inIndex in 0...(arr[outIndex].count - 1) {
        if arr[outIndex][inIndex] != "." {
            arr[outIndex][arr[outIndex].count - inIndex - 1] = arr[outIndex][inIndex]
        }
    }
    answer += arr[outIndex].reduce("", +)
    answer += "\n"
}

print(answer)
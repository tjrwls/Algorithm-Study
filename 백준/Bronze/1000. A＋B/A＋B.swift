import Foundation

let str = readLine()!
let arr = str.components(separatedBy: " ")
print("\((Int(arr[0]) ?? 0) + (Int(arr[1]) ?? 0))")
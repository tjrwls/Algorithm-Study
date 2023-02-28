import Foundation

let inputNums = readLine()!.split(separator: " ").map{Int($0)!}
var woods: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
var max = woods.max()!
var mid = 0
var min = 0
var h = 0
var m = 0

while min <= max {
    m = 0
    mid = (min + max) / 2
    for wood in woods {
        if wood > mid {
            m += wood - mid
        }
    }
    if m >= inputNums[1] {
        h = mid
        min = mid + 1
    } else {
        max = mid - 1
    }
}

print(h)
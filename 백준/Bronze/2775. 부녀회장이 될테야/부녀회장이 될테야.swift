import Foundation
let inputNum = Int(String(readLine()!))!
for _ in 1...inputNum {
    let k = Int(String(readLine()!))!
    let n = Int(String(readLine()!))!
    if n == 1 {
        print("1")
    } else {
        var nums = Array(repeating: Array(repeating: 1, count: n), count: k + 1)
        nums[0] = Array(1...n)
        for outIndex in 1...k {
            var tempArr: [Int] = [1]
            for inIndex in 1...(n - 1) {
                tempArr.append(nums[outIndex - 1][inIndex] + tempArr[inIndex - 1])
            }
            nums[outIndex] = tempArr
        }
        print(nums.last!.last!)
    }
}
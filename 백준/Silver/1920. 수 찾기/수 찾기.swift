import Foundation
let n = readLine()!
let aArr: Set<String> = Set(readLine()!.components(separatedBy: " "))
let m = readLine()!
let bArr: [String] = readLine()!.components(separatedBy: " ")

for element in bArr {
    print(aArr.contains(element) ? "1" : "0")
}
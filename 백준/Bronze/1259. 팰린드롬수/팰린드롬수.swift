import Foundation

var inputNum = readLine()!.map{Int(String($0)) ?? 0}
while inputNum != [0] {
    var isChecked: Bool = true
    for index in 0...inputNum.count / 2 {
        if inputNum[index] != inputNum[inputNum.count - index - 1]{
            isChecked = false
            break
        } else {
            isChecked = true
        }
    }
    print(isChecked ? "yes" : "no")
    inputNum = readLine()!.map{Int(String($0)) ?? 0}
}
let numArr = readLine()!.split{$0 == " "}.map{Int($0) ?? 0}
print(numArr[0] - numArr[1])
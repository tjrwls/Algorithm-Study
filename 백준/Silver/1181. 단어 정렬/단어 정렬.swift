var inputNum = Int(readLine()!)!
var inputArr: Set<String> = Set<String>()
var answer: [String] = []
for _ in 0..<inputNum {
    inputArr.insert(readLine()!)
}
print(inputArr.sorted { ($0.count, $0) < ($1.count, $1)}.joined(separator: "\n"))
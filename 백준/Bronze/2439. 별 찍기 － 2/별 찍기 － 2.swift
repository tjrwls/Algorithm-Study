let n = Int(readLine()!)!
for cnt in 1...n {
    print((Array(repeating: " ", count: n - cnt) + Array(repeating: "*", count: cnt)).joined())
}

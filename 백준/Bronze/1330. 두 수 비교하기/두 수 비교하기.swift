let input = readLine()!.split(separator: " ")
let A = Int(input.first!)!
let B = Int(input.last!)!
if A > B {
    print(">")
} else if A < B {
    print("<")
} else {
    print("==")
}

func solution(_ x:Int) -> Bool {
    var number: Int = x
    var sum: Int = 0
    while number != 0 {
        sum += number % 10
        number /= 10
    }
    return x % sum == 0 ? true : false
}
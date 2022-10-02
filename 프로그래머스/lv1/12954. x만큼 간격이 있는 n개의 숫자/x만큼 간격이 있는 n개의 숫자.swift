func solution(_ x:Int, _ n:Int) -> [Int64] {
    var numberArray: [Int64] = []
    for index in 1...n {
        numberArray.append(Int64(index*x))
    }
    return numberArray
}
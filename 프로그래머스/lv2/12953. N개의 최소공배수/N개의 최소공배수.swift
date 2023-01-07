func solution(_ arr:[Int]) -> Int {
    let maxNum: Int = arr.max() ?? 0
    var index: Int = 2

    while (!(arr.filter{(maxNum * index) % $0 == 0}.count == arr.count))
    {   
        index += 1
    }
    
    return (maxNum * index)
}
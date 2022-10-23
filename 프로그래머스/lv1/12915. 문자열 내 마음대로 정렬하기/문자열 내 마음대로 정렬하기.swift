func solution(_ strings:[String], _ n:Int) -> [String] {
    var sortedArray = Set(strings.map{Array($0)[n]}).sorted()
    var answer: Array<String> = []
    for i in sortedArray {
        answer += strings.filter{Array($0)[n] == i}.sorted()
    }
    return answer
}
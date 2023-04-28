func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var check: [String] = []
    var answer: Int = 0
    
    for city in cities {
        let city = city.uppercased()
        if check.contains(city) {
            answer += 1
            check.remove(at: check.firstIndex(of: city)!)
            check.append(city)
        } else {
            check.append(city)
            answer += 5
            if check.count > cacheSize {
                check.removeFirst()
            }
        }
    }
    
    return answer
}
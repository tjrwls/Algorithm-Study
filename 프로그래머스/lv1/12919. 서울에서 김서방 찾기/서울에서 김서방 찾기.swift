func solution(_ seoul:[String]) -> String {
        var answer = Dictionary(uniqueKeysWithValues: zip(seoul, 0...seoul.count))
        return "김서방은 \(answer["Kim"]!)에 있다"
}
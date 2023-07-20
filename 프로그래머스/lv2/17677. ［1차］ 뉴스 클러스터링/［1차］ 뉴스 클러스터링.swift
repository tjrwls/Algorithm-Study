func solution(_ str1:String, _ str2:String) -> Int {
    var set1: Set<String> = []
    var set2: Set<String> = []

    let str1 = str1.uppercased().map{String($0)}
    let str2 = str2.uppercased().map{String($0)}
    
    func isAlphabet(_ str: String) -> Bool {
        let ascii = Int(UnicodeScalar(str)!.value)
        if 65 <= ascii && ascii <= 90 { return true }
        return false
    }
    
    func makeSet(_ str: [String]) -> Set<String> {
        var result: Set<String> = []
        for idx in 0..<(str.count - 1) {
            if isAlphabet(str[idx]) && isAlphabet(str[idx + 1]) {
                if result.contains(str[idx] + str[idx + 1]) {
                    var tmp = str[idx] + str[idx + 1]
                    for _ in 0..<1000 {
                        if result.contains(tmp) {
                            tmp += "A"
                        } else {
                            result.insert(tmp)
                            break
                        }
                    }
                } else {
                    result.insert(str[idx] + str[idx + 1])
                }
                
            }
        }
        return result
    }
    set1 = makeSet(str1)
    set2 = makeSet(str2)
    if set1.union(set2).count == 0 { return 65536 }
    return Int((Double(set1.intersection(set2).count) / Double(set1.union(set2).count)) * 65536)
}
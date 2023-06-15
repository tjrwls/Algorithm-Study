import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var map: [String: [String]] = [:]
    var que: [String] = []
    var visit: Set<String> = []
    var count = 0
    func compareStr(_ str1: String, _ str2: String) -> Bool {
        let str1 = str1.map{String($0)}
        let str2 = str2.map{String($0)}
        var count = 0
        for index in 0..<str1.count {
            if str1[index] == str2[index] {
                count += 1
            }
        }
        return count == (words.first!.count - 1) ? true : false
    }
    for i in words {
        for j in words {
            if compareStr(i, j) {
                map[i, default: []].append(j)
            }
        }
        if compareStr(begin, i) {
            que.append(i)
            visit.insert(i)
        }
    }
    while !que.isEmpty {
        for _ in 1...que.count {
            let pre = que.removeFirst()
            if pre == target { return count + 1}
            for str in map[pre] ?? [] {
                if !visit.contains(str) {
                    visit.insert(str)
                    que.append(str)
                }
            }
        }
        count += 1
    }
    return 0
}
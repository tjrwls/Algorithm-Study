import Foundation

func solution(_ numbers:String) -> Int {
    let numbers = numbers.map{String($0)}
    var nums: Set<Int> = []
    var result = 0
    func makeNum(n: [String], arr: [String]) {
        nums.insert(Int(n.joined())!)
        if !arr.isEmpty {
            for idx in 0..<arr.count {
                var arr = arr
                makeNum(n: n + [arr.remove(at: idx)], arr: arr)
            }
        }
    }
    
    func checkPrime(n: Int) -> Bool {
        if n < 2 { return false }
        for i in 2...max(2, Int(sqrt(Double(n)))) where n != i && n % i == 0 {
            return false
        }
        return true
    }
    for idx in 0..<numbers.count {
        var numbers = numbers
        makeNum(n: [numbers.remove(at: idx)], arr: numbers)
    }
    
    for num in nums where checkPrime(n: num) {
        result += 1
    }

    return result
}
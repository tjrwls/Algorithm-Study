import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    func checkPrime(_ num: Int) -> Bool {
        if num == 1 { return false }
        if num <= 3 { return true }
        for n in 2...Int(sqrt(Double(num))) {
            if num % n == 0 {
                return false
            }
        }
        return true
    }
    
    let num = String(n, radix: k).split(separator: "0").filter{checkPrime(Int($0)!)}
    return num.count
}
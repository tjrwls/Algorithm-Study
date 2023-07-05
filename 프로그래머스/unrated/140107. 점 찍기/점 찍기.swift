import Foundation

func solution(_ k:Int, _ d:Int) -> Int64 {
    var count: Int64 = 0
    let maxDirect = Int(pow(Double(d), 2))
    for i in 0...(d / k) {
        let j = sqrt(Double(maxDirect - ((i * k) * (i * k))))
        count += Int64(j / Double(k))
        if (Int(j / Double(k)) % 1) == 0 { count += 1 }
    }
    return count
}
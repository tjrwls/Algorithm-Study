import Foundation

func solution(_ r1:Int, _ r2:Int) -> Int64 {
    var count: Int64 = 0
    var maxY: Int64 = 0
    var minY: Int64 = 0
    for x in 1..<r2 {
        maxY = Int64(sqrt(pow(Double(r2), 2) - pow(Double(x), 2)))
        minY = x > r1 ? 0 : Int64(ceil(sqrt(pow(Double(r1), 2) - pow(Double(x), 2))))
        count += maxY - minY + 1
    }
    return (count * 4) + 4
}

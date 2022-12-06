import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let dot1 = dots.first!
    var dot2: [Int] = dots.filter{dot1[0] != $0[0] && dot1[1] != $0[1] }.first!
    
    return abs((dot1[0] - dot2[0]) * (dot1[1] - dot2[1]))
}
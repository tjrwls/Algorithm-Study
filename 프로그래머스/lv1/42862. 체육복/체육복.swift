import Foundation
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var isGymSuit: [Bool] = Array(repeating: true, count: n)
    lost.map{isGymSuit[$0 - 1] = false}
    var reserveArray: [Int] = []
    
    for i in reserve {
        if !isGymSuit[i - 1] {
            isGymSuit[i - 1] = true
        }
        else {
            reserveArray.append(i)
        }
    }
        
    for i in reserveArray.sorted(){
        switch i {
        case 1: // index = 0
            isGymSuit[1] = true
        case n: // index = n - 1
            isGymSuit[n - 2] = true
        default: // index = i - 1
            if isGymSuit[i - 2] {
                isGymSuit [i] = true
            } else {
                isGymSuit [i - 2] = true
            }
        }
    }
    return isGymSuit.filter{ $0 == true }.count
}
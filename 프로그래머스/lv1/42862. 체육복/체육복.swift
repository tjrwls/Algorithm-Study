import Foundation
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    // 전체 학생수 n  잃어버린 수 lost  여벌 수 reserve
    var isGymSuit: [Bool] = Array(repeating: true, count: n)
    // 체육복을 가지고 있는지 확인할 배열
    // 1 ~ 30
    
    lost.map{isGymSuit[$0 - 1] = false}
    // 도둑 맞은 체육복
    // 1 ~ n
    
    var reserveArray: [Int] = []
    // filter로 도둑맞은 경우 제외
    // 1 ~ n
    
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
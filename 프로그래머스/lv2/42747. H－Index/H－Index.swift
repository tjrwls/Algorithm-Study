import Foundation

func solution(_ citations:[Int]) -> Int {
    var maxIndex: Int = citations.max()!
    var hIndex: [Int] = Array(repeating: 0, count: maxIndex + 1)
    
    for element in citations {
        for index in 0...element {
            hIndex[index] += 1
        }
    }

    for index in Array(0...maxIndex).reversed() {
        if index <= hIndex[index] {
            return index
        }
    }
    
    return 0
}
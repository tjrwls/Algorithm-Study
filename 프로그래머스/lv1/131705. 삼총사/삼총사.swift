import Foundation

func solution(_ number:[Int]) -> Int {
    var count: Int = 0
    
    for i in 0...(number.count - 3) {
        for j in (i + 1)...(number.count - 2) {
            for k in (j + 1)...(number.count - 1){
                if number[i] + number[k] + number[j] == 0 {
                    count += 1
                }
            }
        }
    }
    return count
}
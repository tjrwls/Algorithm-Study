import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let yellowArr: [Int] = Array(1...yellow).filter{ yellow % $0 == 0 }
    for yellowNum in yellowArr {
        let a = max(yellowNum, yellow / yellowNum)
        let b = min(yellowNum, yellow / yellowNum)
           if brown == a * 2 + b * 2 + 4 {
               return [a + 2, b + 2]
           }
    }
    return [0, 0]
}
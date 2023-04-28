import Foundation

func solution(_ arr:[[Int]]) -> [Int] {
    func check(_ arr: [[Int]]) -> (Int, Int) {
        var answer = (0, 0)
        if arr.count == 2 {
            let arr: [Int] = arr[0] + arr[1]
            let num = arr.reduce(0, +)
            if num == 4 {
                return (0, 1)
            } else if num == 0 {
                return (1, 0)
            }
            return (4 - num, num)
        } else {
            var arr1: [[Int]] = []
            var arr2: [[Int]] = []
            var arr3: [[Int]] = []
            var arr4: [[Int]] = []
            
            for index in 0..<arr.count {
                if index < arr.count / 2 {
                    arr1.append(Array(arr[index].prefix(arr.count/2)))
                    arr2.append(Array(arr[index].suffix(arr.count/2)))
                } else {
                    arr3.append(Array(arr[index].prefix(arr.count/2)))
                    arr4.append(Array(arr[index].suffix(arr.count/2)))
                }
            }
            let count1 = check(arr1)
            let count2 = check(arr2)
            let count3 = check(arr3)
            let count4 = check(arr4)
            
            answer.0 += count1.0 + count2.0 + count3.0 + count4.0
            answer.1 += count1.1 + count2.1 + count3.1 + count4.1
            if answer.0 == 4 && answer.1 == 0 {
                return (1, 0)
            } else if answer.1 == 4 && answer.0 == 0 {
                return (0, 1)
            }
            return answer
        }
    }
    let answer = check(arr)
    return [answer.0, answer.1]
}
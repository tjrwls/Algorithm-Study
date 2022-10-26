import Foundation

func solution(_ nums:[Int]) -> Int {
    var arr: Array<Int> = []
    var answer: Array<Int> = []
    var check: Int = 0
    
    for firstIndex in 1...(nums.count - 2) {
        for secondIndex in (firstIndex + 1)...(nums.count - 1) {
            for ThirdIndex in (secondIndex + 1)...(nums.count) {
                arr.append(nums[firstIndex - 1] + nums[secondIndex - 1] + nums[ThirdIndex - 1])
            }
        }
    }
    for index in arr {
        for modNum in 2...max(Int(sqrt(Double(index))), 2){
            if index % modNum == 0{
                check = 1
            }
        }
        if check == 0 {
            answer.append(index)
        }
        check = 0
    }
    return answer.count
}
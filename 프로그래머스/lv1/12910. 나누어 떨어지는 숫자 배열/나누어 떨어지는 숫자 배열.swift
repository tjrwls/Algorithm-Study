import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var answer: Array<Int> = []
    for i in 0...(arr.count - 1){
        if arr[i] % divisor == 0{
            answer.append(arr[i])
        }
    }
    
    return answer.isEmpty ? [-1] : answer.sorted()
}

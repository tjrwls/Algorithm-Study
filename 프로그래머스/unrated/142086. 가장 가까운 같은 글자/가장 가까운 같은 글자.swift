import Foundation

func solution(_ s:String) -> [Int] {
    var answer: [Int] = []
    var zeroArr: [Int] = Array(repeating: -1, count: Set(s).count)
    var sDic: [String : Int] = Dictionary(uniqueKeysWithValues: zip(Set(s.map{String($0)}), zeroArr))
                                          
    for (index, value) in s.enumerated() {
        if sDic[String(value)] == -1 {
            answer.append(-1)
            sDic[String(value)] = index
        } else {
            answer.append(index - sDic[String(value)]!)
            sDic[String(value)] = index
        }
    }
    return answer
}
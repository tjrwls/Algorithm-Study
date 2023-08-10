import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var clothesDic: [String : Int] = [:]
    var result = 0
    func combination(_ count: [Int]) -> Int {
        var count = count.map{$0 + 1}
        return result + count.reduce(1, *) - 1
    }
    for clothes in clothes {
        clothesDic[clothes.last!, default: 0] += 1
    }
    return clothesDic.count == 1 ? clothes.count : combination(clothesDic.map{$0.value})
}
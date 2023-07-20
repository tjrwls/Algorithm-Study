import Foundation

func solution(_ topping:[Int]) -> Int {
    var result = 0
    var dic1: [Int:Int] = [:]
    var set2: Set<Int> = []
    topping.map{dic1[$0, default: 0] += 1}
    var count1 = dic1.count
    var count2 = 0
    
    for topping in topping {
        dic1[topping]! -= 1
        if dic1[topping] == 0 { count1 -= 1 }
        if !set2.contains(topping) { count2 += 1 }
        set2.insert(topping)
        if count1 == count2 { result += 1 }
    }
    return result
}
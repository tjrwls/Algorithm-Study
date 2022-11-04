import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var price = d.sorted(by: <)
    var money: Int = budget
    var count: Int = 0
    
    for i in price {
        if money >= i {
            money -= i
            count += 1
        }
    }
    return count
}

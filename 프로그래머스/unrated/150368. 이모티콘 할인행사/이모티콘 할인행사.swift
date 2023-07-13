import Foundation

func solution(_ users:[[Int]], _ emoticons:[Int]) -> [Int] {
    var sales: [[Int]] = []
    var maxCount = 0
    var maxRevenue = 0
    
    func calcPrice(wantSale: Int, maxPrice: Int, sale: [Int]) -> (Int, Bool) {
        var result = 0
        for idx in 0..<emoticons.count {
            if wantSale <= sale[idx] {
                result += emoticons[idx] * (100 - sale[idx]) / 100
            }
        }

        if maxPrice <= result {
            return (0, true)
        }
        return (result, false)
    }
    
    func saleCombination(_ arr: [Int]){
        if arr.count == emoticons.count {
            sales.append(arr)
        } else {
            for j in [40, 30, 20, 10] {
                saleCombination(arr + [j])
            }
        }
    }
    
    saleCombination([])
    
    for sale in sales {
        var salesRevenue = 0
        var count = 0
        for user in users {
            let result = calcPrice(wantSale: user.first!, maxPrice: user.last!, sale: sale)
            salesRevenue += result.0
            if result.1 { count += 1 }
        }
        if maxCount < count || maxCount == count && maxRevenue < salesRevenue {
            maxCount = count
            maxRevenue = salesRevenue
        }
    }

    return [maxCount, maxRevenue]
}
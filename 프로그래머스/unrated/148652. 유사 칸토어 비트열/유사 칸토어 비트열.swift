import Foundation

func solution(_ n:Int, _ l:Int64, _ r:Int64) -> Int {
    let l = Int(l)
    let r = Int(r)
    
    func check(_ range: Int, _ n: Int) -> Int {
        var result = 0
        let countOfOne = Int(pow(4.0, Double(n - 1)))
        let multiple = Int(pow(5.0, Double(n - 1)))
        if range <= 5 { return Array("11011").prefix(range).filter{$0 == "1"}.count }
        switch range {
        case 1..<multiple: 
            result = check(range, n - 1)
        case multiple ..< multiple * 2: 
            result = countOfOne + check(range % multiple, n - 1)
        case multiple * 2 ..< multiple * 3: 
            result = countOfOne * 2
        case multiple * 3 ..< multiple * 4: 
            result = countOfOne * 2 + check(range % multiple, n - 1)
        case multiple * 4 ..< multiple * 5: 
            result = countOfOne * 3 + check(range % multiple, n - 1)
        case multiple * 5:
            result = countOfOne * 4
        default:
            break
        }
        return result
    }
    return check(r, n) - check(l - 1, n)
}
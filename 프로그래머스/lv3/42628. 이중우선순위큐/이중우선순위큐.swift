import Foundation

func solution(_ operations:[String]) -> [Int] {
    var result: Set<Int> = []
    for operation in operations {
        let oper = operation.split(separator: " ")
        switch oper.first! {
            case "I":
                result.insert(Int(oper.last!)!)
            case "D":
                if !result.isEmpty {
                    if oper.last! == "1" {
                        result.remove(result.max()!)
                    } else {
                        result.remove(result.min()!)
                    }
                }
            default:
                break
        }
    }
    return [result.max() ?? 0, result.min() ?? 0]
}
import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    var point = (0, 0)
    let park = park.map{$0.map{String($0)}}
    
    for outIndex in 0..<park.count {
        for inIndex in 0..<park.first!.count {
            if park[outIndex][inIndex] == "S" {
                point = (outIndex, inIndex)
            }
        }
    }
    
    for route in routes {
        let direction = route.split(separator: " ").map{String($0)}
        var checkPoint = point
        for _ in 1...Int(direction[1])! {
            switch direction[0] {
            case "N":
                if checkPoint.0 - 1 >= 0 && checkMove(park[checkPoint.0 - 1][checkPoint.1]) {
                    checkPoint.0 -= 1
                } else { break }
            case "S":
                if checkPoint.0 + 1 < park.count && checkMove(park[checkPoint.0 + 1][checkPoint.1]) {
                    checkPoint.0 += 1
                } else { break }
            case "W":
                if checkPoint.1 - 1 >= 0 && checkMove(park[checkPoint.0][checkPoint.1 - 1]) {
                    checkPoint.1 -= 1
                } else { break }
            case "E":
                if checkPoint.1 + 1 < park.first!.count && checkMove(park[checkPoint.0][checkPoint.1 + 1]) {
                        checkPoint.1 += 1
                } else { break }
            default :
                break
            }
            if abs(checkPoint.0 - point.0) + abs(checkPoint.1 - point.1) == Int(direction[1])! {
                point = checkPoint
            }
        }
    }
    return [point.0, point.1]
}


func checkMove(_ str: String) -> Bool {
    return str == "O" || str == "S"
}

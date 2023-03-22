import Foundation

func solution(_ m:Int, _ n:Int, _ startX:Int, _ startY:Int, _ balls:[[Int]]) -> [Int] {
    var answer: [Int] = []
    let startX = Double(startX)
    let startY = Double(startY)
    let m = Double(m)
    let n = Double(n)
    for ball in balls {
        var temp : [Int] = []
        let ball = ball.map{Double($0)}
        let points = [(-ball[0], ball[1]), (ball[0], -ball[1]), (2 * m - ball[0], ball[1]), (ball[0], 2 * n - ball[1])]
        for point in points {
            let direct = pow(startX - point.0, 2) + pow(startY - point.1, 2)
            if !((startX == point.0 && abs(point.1 - startY) > abs(point.1 - ball[1])) ||
                 (startY == point.1 && abs(point.0 - startX) > abs(point.0 - ball[0]))) {
                temp.append(Int(direct))
            }
        }
        answer.append(temp.min()!)
    }
    return answer
}
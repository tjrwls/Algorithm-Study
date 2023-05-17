import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var arr: [[Int]] = [Array(repeating: 0, count: rows)]
    var answer: [Int] = []
    var num = columns
    let dx = [0, 1, 0, -1]
    let dy = [1, 0, -1, 0]
    for _ in 1...(rows + 1) {
        arr.append([0] + Array((num - columns + 1)...num))
        num += columns
    }
    
    for querie in queries {
        let moveRows = [querie[0], querie[2]]
        let moveColumns = [querie[1], querie[3]]
        var direction = 0
        var index = (moveRows.first!, moveColumns.first!)
        var nextNum = 0
        var minNum = rows * columns
        var previousNum = arr[moveRows.first!][moveColumns.first!]
        repeat {
            index.0 += dx[direction % 4]
            index.1 += dy[direction % 4]                                     // 2 2 , 4 5
            if index.0 == moveRows.first! && index.1 == moveColumns.last! || // (2, 5)
                index.0 == moveRows.last! && index.1 == moveColumns.last! || // (4, 5)
                index.0 == moveRows.last! && index.1 == moveColumns.first! { // (4, 2)
                direction += 1
            }
            if minNum > previousNum { minNum = previousNum }
            nextNum = arr[index.0][index.1]
            arr[index.0][index.1] = previousNum
            previousNum = nextNum
        } while index.0 != moveRows.first! || index.1 != moveColumns.first!
        if minNum > previousNum { minNum = previousNum }
        answer.append(minNum)
    }
    return answer
}
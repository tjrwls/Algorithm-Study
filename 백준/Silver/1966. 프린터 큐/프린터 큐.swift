import Foundation
let n = Int(readLine()!)!

for _ in 1...n {
    let inputNum: [Int] = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
    let queue: [Int] = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
    print(solution(inputNum: inputNum, queue: queue))
}

func solution(inputNum: [Int], queue: [Int]) -> String {
    var queue = queue
    let checkNum = queue[inputNum[1]]
    var count = 0
    
    if queue.filter({$0 == queue[inputNum[1]]}).count != 1 {
        queue[inputNum[1]] = 0
    }
    
    while checkNum != queue.max() {
        if queue.first! == queue.max()! {
            queue.removeFirst()
            count += 1
        } else {
            queue.append(queue.removeFirst())
        }
    }
    if let addCount = queue.filter({$0 == checkNum || $0 == 0}).firstIndex(of: 0) {
      count += addCount
    }
    
    return String(count + 1)
}
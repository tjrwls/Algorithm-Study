import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer : Array<Int> = []
    
    for command in commands{
        answer.append(Array(array[(command[0] - 1)...(command[1] - 1)]).sorted()[command[2] - 1])
    }
    
    return answer
}

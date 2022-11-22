import Foundation

func solution(_ food:[Int]) -> String {
    var answer: Array<String> = ["0"]
    var food = food
    food.removeFirst()
    for (index, value) in food.enumerated().reversed() {
        if value > 1{
            for _ in 1...(value / 2) {
                answer.insert("\(index + 1)", at: 0)
                answer.insert("\(index + 1)", at: (answer.count))
            }
        }
    }
    return answer.reduce("", +)
}
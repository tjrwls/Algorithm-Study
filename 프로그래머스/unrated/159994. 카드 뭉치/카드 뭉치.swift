import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    
    func checkSolution(isFirstOrder: Bool ) -> String {
        var cards1 = cards1
        var cards2 = cards2
        var goalIndex = 0
        var goalStr: [String] = []
        var isFirstOrder = isFirstOrder
        
        func checkCards() {
            while goalIndex < goal.count {
                if isFirstOrder {
                    guard cards1.first ?? "" == goal[goalIndex] else {break}
                    goalStr.append(cards1.removeFirst())
                    goalIndex += 1
                } else {
                    guard cards2.first ?? "" == goal[goalIndex] else {break}
                    goalStr.append(cards2.removeFirst())
                    goalIndex += 1
                }
            }
        }
        
        while !(goalStr == goal) {
            if isFirstOrder {
                guard cards1.first ?? "" == goal[goalIndex] else {return "No"}
                checkCards()
            } else {
                guard cards2.first ?? "" == goal[goalIndex] else {return "No"}
                checkCards()
            }
            isFirstOrder = !isFirstOrder
        }
        
        return "Yes"
    }
    
    var firstAnswer = checkSolution(isFirstOrder: true)
    var secondAnswer = checkSolution(isFirstOrder: false)
    
    if firstAnswer == "Yes" || secondAnswer == "Yes" {
        return "Yes"
    }
    return "No"
}
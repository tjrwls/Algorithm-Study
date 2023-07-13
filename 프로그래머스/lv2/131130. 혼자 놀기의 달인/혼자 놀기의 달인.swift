import Foundation

func solution(_ cards:[Int]) -> Int {
    var set: [Int] = []
    var cardIndex = 1
    var tmp = cards.first!
    var check: Set<Int> = [cards.first!]
    var count = 1
    check.insert(cards.first!)

    while check.count != cards.count {
        if cardIndex != tmp {
            tmp = cards[tmp - 1]
            check.insert(tmp)
            count += 1
        } else {
            check.insert(tmp)
            set.append(count)
            count = 1
            cardIndex = 0
            for card in cards {
                cardIndex += 1
                if !check.contains(card) {
                    tmp = card
                    check.insert(tmp)
                    break
                }
            }
        }
    }
    set.append(cards.count - set.reduce(0, +))
    set.sort(by: >)
    if set.count < 2 { return 0 }
    return set[0] * set[1]
}
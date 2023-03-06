import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let terms = terms.map{$0.split(separator: " ")}
    let privacies = privacies.map{$0.split(separator: " ")}
    let today = today.split(separator: ".").map{Int($0)!}
    var answer: [Int] = []
    for index in privacies.indices {
        var date: [Int] = privacies[index][0].split(separator: ".").map{Int($0)!}
        for term in terms {
            if term[0] == privacies[index][1] {
                let month = date[1] + Int(term[1])!
                date[0] += month % 12 == 0 ? ((month / 12) - 1) : (month / 12)
                date[1] = month % 12 == 0 ? 12 : (month % 12)
                date[1] = date[1] == 0 ? 1 : date[1]
                break
            }
        }
        if date[0] < today[0] {
            answer.append(index + 1)
        } else if date[0] == today[0] {
            if date[1] < today[1] {
                answer.append(index + 1)
            } else if date[1] == today[1] {
                if date[2] <= today[2] {
                    answer.append(index + 1)
                }
            }
        }
    }
    return answer
}
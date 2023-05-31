import Foundation

func solution(_ record:[String]) -> [String] {
    var result: [[String]] = []
    var userInfo: [String: String] = [:]
    for record in record {
        let log = record.split(separator: " ").map{String($0)}
        if log[0] == "Enter" {
            result.append([log[1], "님이 들어왔습니다."])
            userInfo[log[1]] = log[2]
        } else if log[0] == "Change" {
            userInfo[log[1]] = log[2]
        } else {
            result.append([log[1], "님이 나갔습니다."])
        }
    }
    
    return result.map{userInfo[$0[0]]! + $0[1]}
}
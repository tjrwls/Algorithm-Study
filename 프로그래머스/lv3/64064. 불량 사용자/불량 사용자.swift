import Foundation

func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
    var checkDic: [Set<String>: Int] = [:]
    let totalIdCount = banned_id.count
    func check(_ userId: String,_ bannedId: String) -> Bool {
        let userId = userId.map{String($0)}
        let bannedId = bannedId.map{String($0)}
        if userId.count == bannedId.count {
            for idx in 0..<userId.count where userId[idx] != bannedId[idx] && bannedId[idx] != "*" {
                return false
            }
            return true
        }
        return false
    }
    func dfs(_ checkId: [String],_ user_id: [String],_ banned_id: [String],_ idx: Int) {
        let checkId = checkId
        var user_id = user_id
        var banned_id = banned_id
        if checkId.count == totalIdCount {
            checkDic[Set(checkId), default: 0] += 1
        } else if banned_id.count > 1 {
            user_id.remove(at: idx)
            banned_id.removeLast()
            for idx in 0..<user_id.count where check(user_id[idx], banned_id.last!) {
                dfs(checkId + [user_id[idx]], user_id, banned_id, idx)
            }
        }
    }
    for idx in 0..<user_id.count where check(user_id[idx], banned_id.last!) {
        dfs([user_id[idx]], user_id, banned_id, idx)
    }
    return checkDic.keys.count
}
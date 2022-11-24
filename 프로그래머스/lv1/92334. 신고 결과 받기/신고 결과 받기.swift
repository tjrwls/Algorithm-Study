import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var answer: [Int] = Array(repeating: 0, count: id_list.count)
    var idDic: [String : Int] = Dictionary(uniqueKeysWithValues: zip(id_list, answer))
    var id_listDic: [String : Int] = Dictionary(uniqueKeysWithValues: zip(id_list, 0...id_list.count))
    
    for index in Set(report){
        let id = index.components(separatedBy: " ")[1]
        idDic[id]! += 1
    }
    
    for index in Set(report) {
        let id = index.components(separatedBy: " ")
        
        if idDic[id[1]] ?? 0 >= k {
            answer[id_listDic[id[0]]!] += 1
        }
    }
    
    return answer
}
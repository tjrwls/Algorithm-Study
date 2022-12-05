import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var strDic: [String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    var intDic: [Int] = Array(repeating: 0, count: 10)
    var a: [String : Int] = Dictionary(uniqueKeysWithValues: zip(strDic , intDic))
    var b: [String : Int] = Dictionary(uniqueKeysWithValues: zip(strDic , intDic))
    var resultArr: [Int] = []
    var answer: String = ""
        
    X.map{a[String($0)]! += 1}
    Y.map{b[String($0)]! += 1}
    
    resultArr = strDic.map{ min(a[$0]!, b[$0]!)}

    for index in (0...9).reversed(){
        if resultArr[index] != 0 {
            for _ in 1...resultArr[index] {
                answer += String(index)
            }
        }
    }
    
    if answer.isEmpty {return "-1"}
    if answer.trimmingCharacters(in: ["0"]).count == 0 {return "0"}
    return answer
}
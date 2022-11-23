import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var surveyScore: [Int] = choices.map{ 4 - $0 }
    var surveyDic: [String : Int] = Dictionary(uniqueKeysWithValues: zip(Set(survey), Array(repeating: 0, count: (Set(survey).count))))
    var answer: String = ""
    
    for (element, index) in zip(survey, 0...(choices.count - 1)) {
        surveyDic[element]! += surveyScore[index]
        }
    print(surveyDic)
    answer += (surveyDic["RT"] ?? 0) - (surveyDic["TR"] ?? 0) >= 0 ? "R" : "T"
    answer += (surveyDic["CF"] ?? 0) - (surveyDic["FC"] ?? 0) >= 0 ? "C" : "F"
    answer += (surveyDic["JM"] ?? 0) - (surveyDic["MJ"] ?? 0) >= 0 ? "J" : "M"
    answer += (surveyDic["AN"] ?? 0) - (surveyDic["NA"] ?? 0) >= 0 ? "A" : "N"
    
    return answer
}
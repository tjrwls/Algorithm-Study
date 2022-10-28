import Foundation

func solution(_ s:String) -> Int {
    var strArr : Array<String> = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var intAndStringDic = Dictionary(uniqueKeysWithValues: zip(strArr, 0...9))
    
    var arr = s.map{String($0)} + [""] + [""]
    var indexCount: Int = 0
    
    var answer : String = ""
    
    while(indexCount < s.count) {
        if Int(arr[indexCount]) != nil {
            answer += String(arr[indexCount])
            indexCount += 1
        }
        else {
            if intAndStringDic[arr[indexCount...(indexCount+2)].reduce("", +) ] != nil {
                answer += String(intAndStringDic[arr[indexCount...(indexCount+2)].reduce("", +)]!)
                indexCount += 3
            } else if intAndStringDic[arr[indexCount...(indexCount+3)].reduce("", +) ] != nil {
                answer += String(intAndStringDic[arr[indexCount...(indexCount+3)].reduce("", +)]!)
                indexCount += 4
            }else {
                answer += String(intAndStringDic[arr[indexCount...(indexCount+4)].reduce("", +)]!)
                indexCount += 5
            }

        }
    }
    return Int(answer) ?? 0
}
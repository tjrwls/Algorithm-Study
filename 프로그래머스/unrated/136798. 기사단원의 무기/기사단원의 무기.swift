import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var numCount: Int = 0
    var answer: Int = 0
    for outIndex in 1...number{
        switch outIndex {
            case 1:
            answer += 1
            case 2:
            answer += 2
            default:
            var inIndex: Int = 1
            numCount = 0
            while(inIndex * inIndex <= outIndex){
                if inIndex * inIndex == outIndex {
                        numCount += 1
                }
                else if outIndex % inIndex == 0 {
                    numCount += 2   
                }
                inIndex += 1
            }
            answer += numCount > limit ? power : numCount
        }
    }
    return answer
}
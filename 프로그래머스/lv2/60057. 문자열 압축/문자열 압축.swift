import Foundation

func solution(_ s:String) -> Int {
    if s.count == 1 { return 1 }
    var answer = s.count
    let s = s.map{String($0)}
    for num in 1...(s.count / 2) {
        var check: ArraySlice<String> = []
        var count = 1
        var tmp = ""
        var maxIndex = 0
        for index in 0..<(s.count / num) {
            maxIndex = ((index + 1) * num) - 1
            if check == s[(index * num)...(((index + 1 ) * num) - 1)] {
                count += 1
            } else {
                if count == 1 {
                    tmp += check.joined()
                } else {
                    tmp += String(count) + check.joined()
                    count = 1
                }
                check = s[(index * num)...(((index + 1 ) * num) - 1)]
            }
        }
        if count == 1 {
            tmp += check.joined()
        } else {
            tmp += String(count) + check.joined()
            count = 1
        }
        if maxIndex < s.count - 1 {
            tmp += s[(maxIndex + 1)...(s.count - 1)].joined()
        }
        if answer > tmp.count {
            answer = tmp.count
        }
    }
    return answer
}
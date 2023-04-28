func solution(_ m:String, _ musicinfos:[String]) -> String {
    func checkString(_ s: String) -> String {
        var temp = s
        temp = temp.replacingOccurrences(of: "C#", with: "c")
        temp = temp.replacingOccurrences(of: "D#", with: "d")
        temp = temp.replacingOccurrences(of: "F#", with: "f")
        temp = temp.replacingOccurrences(of: "G#", with: "g")
        temp = temp.replacingOccurrences(of: "A#", with: "a")        
        return temp
    }
    
    var answer: [(String, Int)] = []
    let m = checkString(m)
    
    for musicinfo in musicinfos {
        let musicinfo = musicinfo.split(separator: ",")
        let musicMelody = checkString(String(musicinfo[3]))
        let startTime = Int(musicinfo[0].split(separator: ":")[0])! * 60 + Int(musicinfo[0].split(separator: ":")[1])!
        let endTime = Int(musicinfo[1].split(separator: ":")[0])! * 60 + Int(musicinfo[1].split(separator: ":")[1])!
        var playTime = endTime - startTime
        var melody = ""
        while melody.count != playTime {
            if melody.count < playTime - musicMelody.count {
                melody += musicMelody
            } else {
                melody += musicMelody.prefix(playTime - melody.count)
            }
        }
        if melody.contains(m) {
            answer.append((String(musicinfo[2]), playTime))
        }
    }
    
    answer = answer.sorted{$0.1 > $1.1}
    return answer.first?.0 ?? "(None)"
}
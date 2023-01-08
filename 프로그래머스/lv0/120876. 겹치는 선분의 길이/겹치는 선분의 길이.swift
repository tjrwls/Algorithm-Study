import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var answer = 0
    var a = Set(lines[0][0]...lines[0][1]).intersection(Set(lines[1][0]...lines[1][1]))
    var b = Set(lines[1][0]...lines[1][1]).intersection(Set(lines[2][0]...lines[2][1]))
    var c = Set(lines[2][0]...lines[2][1]).intersection(Set(lines[0][0]...lines[0][1]))
    var d = a.intersection(b)
    var e = b.intersection(c)
    answer += (a.max() ?? 0) - (a.min() ?? 0)
    answer += (b.max() ?? 0) - (b.min() ?? 0)
    answer += (c.max() ?? 0) - (c.min() ?? 0)
    answer -= (d.max() ?? 0) - (d.min() ?? 0)
    answer -= (e.max() ?? 0) - (e.min() ?? 0)
    
    return answer
}
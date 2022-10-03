func solution(_ s:String) -> String {
    var strIndex = s.index(s.startIndex, offsetBy: s.count/2)
    return s.count % 2 == 0 ? "\(s[s.index(before: strIndex)])\(s[strIndex])" : "\(s[strIndex])"
}
func solution(_ s:String) -> Bool {
    if s.count == 4 || s.count == 6 {
        return (Int(s) ?? 1000000) == 1000000 ? false : true
    } else {
        return false
    }
}
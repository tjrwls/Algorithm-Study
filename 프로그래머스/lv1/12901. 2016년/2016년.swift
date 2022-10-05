func solution(_ a:Int, _ b:Int) -> String {
    let dayOfMonth: Array<Int> = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30]
    var day: Array<String> = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    var date: Int = dayOfMonth[0...(a-1)].reduce(0, +) + b
    return day[date % 7]
}
func solution(_ a:Int, _ b:Int) -> String {
    let dayOfMonth: Array<Int> = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30]
    var day: Int = b
    var answer: String = ""
    for index in 0...(a - 1){
        day += dayOfMonth[index]
    }
    switch day % 7 {
        case 0:
                answer = "THU"
        case 1:
                answer = "FRI"
        case 2:
                answer = "SAT"
        case 3:
                answer = "SUN"
        case 4:
                answer = "MON"
        case 5:
                answer = "TUE"
        case 6:
                answer = "WED"
        default:    break;
    }
    return answer
}

func solution(_ num:Int) -> Int {
    var count: Int = 0
    var number: Int = num
    while(number != 1){
        if (count > 500){
            return -1
        }
        number = (number % 2 == 0 ) ? number / 2 : (number * 3) + 1
        count += 1
    }
    return count
}
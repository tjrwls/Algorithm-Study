func solution(_ n:Int, _ m:Int) -> [Int] {
    var a: Int = 0
    var b: Int = 0
    
    for i in 1...m * n {
        if n % i == 0 && m % i == 0 {
            a = i
        }
            
        if b == 0 && i % n == 0 && i % m == 0{
            b = i
            return [a, b]
        }

    }
    
    return [a, b]
}
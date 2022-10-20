import Foundation

func solution(_ n:Int) -> Int {
    for i in 1...(n * 6) {
        if (i * 6) % n == 0{
        return i
        }
    }
    return n * 6
}
import Foundation

func solution(_ w:Int, _ h:Int) -> Int64{
    func gcd(_ a: Int,_ b: Int) -> Int {
        return a % b == 0 ? b : gcd(b, a % b)
    }
    
    return Int64(w * h - (w + h - gcd(w, h)))
}
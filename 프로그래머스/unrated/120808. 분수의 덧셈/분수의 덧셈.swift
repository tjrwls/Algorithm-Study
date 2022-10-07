import Foundation

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    var denum3: Int = denum1 * num2 + denum2 * num1
    var num3: Int = num1 * num2
    var index: Int = 2
    
    while(index <= denum3) {
        if denum3 % index == 0 && num3 % index == 0 {
            denum3 /= index
            num3 /= index
            index = 2
        } else {
            index += 1
        }
    }
    return [denum3, num3]
}
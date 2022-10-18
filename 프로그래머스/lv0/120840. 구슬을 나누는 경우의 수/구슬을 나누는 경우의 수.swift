import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    if balls == share{
        return 1
    } else{
        var answer: Array<Double> = Array((share + 1)...balls).map{Double($0)}
        var answer2: Array<Double> = Array(1...(balls - share)).map{Double($0)}
        return Int(answer.reduce(1, *) / answer2.reduce(1, *))
    }
}
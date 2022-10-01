func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var sumarr: [[Int]] = Array(repeating : Array(repeating: 0, count: arr1[0].count), count: arr1.count)
    
    for i in 0...(arr1.count - 1){
        for j in 0...(arr1[i].count - 1){
            sumarr[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return sumarr
}
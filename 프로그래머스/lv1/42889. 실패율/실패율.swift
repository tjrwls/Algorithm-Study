import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    // (스테이지 개수 1 ~ N + 1) N개
    var failureRate: [Double] = Array(repeating: 0, count: N)
    // 실패율을 저장할 배열
    var userCount: Double = Double(stages.count)
    // 유저수
    var answer: [Int] = []
    // 리턴할 배열을 저장할 빈 배열

    var stageCount: [Int] = Array(repeating: 0, count: N + 1)
            
    stages.map{ stageCount[$0 - 1] += 1}
    // 각 스테이지에 도달한 플레이어 수를 배열에 저장 index = stage - 1
    // 시간 초과 해결 21번 런타임 에러
    
    for index in 0...(N - 1){
        if userCount == 0 { break } // 도달한 플레이어가 0일때 실패율 0
        // 테스트 케이스 1, 6, 7, 23, 24, 25 해결
        
        if userCount != 0 {
            failureRate[index] = Double(stageCount[index]) / userCount
            // 실패율 계산
            
            userCount -= Double(stageCount[index])
                // 스테이지에 도달한 유저수를 계산
        }

    }
    
    var failureRateDic = Dictionary(uniqueKeysWithValues: zip(1...N, failureRate))
    // [index : 실패율]형태의 딕셔너리 생성
    
    for i in Set(failureRate).sorted(by: >){ // set을 사용하여 중복을 제외하여 정렬
        answer += failureRateDic.filter{$0.value == i}.keys.sorted()
    }
    //
    
    return answer
}
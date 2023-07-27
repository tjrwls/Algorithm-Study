func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var result = n
    var tree: [Int:Set<Int>] = [:]
    func calcPower(_ node: Int) -> Int {
        var visit: Set<Int> = [node]
        var arr: [Int] = [node]
        var count = 1
        while !arr.isEmpty {
            let pre = arr.removeLast()
            for element in tree[pre]! where !visit.contains(element) {
                visit.insert(element)
                arr.append(element)
                count += 1
            }
        }
        return count
    }
    
    for wire in wires {
        tree[wire.first!, default: []].insert(wire.last!)
        tree[wire.last!, default: []].insert(wire.first!)
    }
    
    for wire in wires {
        tree[wire.first!]!.remove(wire.last!)
        let power = abs(n - calcPower(wire.first!) * 2)
        if power < result { result = power }
        tree[wire.first!]!.insert(wire.last!)
    }
    return result
}
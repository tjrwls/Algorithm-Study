var dic: [String : Int] = [:]
readLine()!.uppercased().map{dic[String($0)] = dic[String($0), default: 0] + 1}
dic = dic.filter{$0.value >= dic.max{$0.value < $1.value}!.value}
print(dic.count > 1 ? "?" : dic.first!.key)


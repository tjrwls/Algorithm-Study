import Foundation

func solution(_ book_time:[[String]]) -> Int {
    var rooms: [Int] = []
    var book_time = book_time.map{$0.map{Int($0.split(separator: ":").first!)! * 60 + Int($0.split(separator: ":").last!)!}}.sorted{$0.first! < $1.first!}
    for book_time in book_time {
        if rooms.isEmpty {
            rooms.append(book_time.last!)
        } else {
            for index in 0..<rooms.count {
                if rooms[index] + 10 <= book_time.first! {
                    rooms[index] = book_time.last!
                    break
                } else if index == rooms.count - 1 {
                    rooms.append(book_time.last!)
                }
            }
        }
    }
    return rooms.count
}
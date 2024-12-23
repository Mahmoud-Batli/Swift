//enum Level {
//    case one
//    case two
//    case three
//}

//Or
enum Level : String {
    case one = "Beginner"
    case two = "Master"
    case three = "Professional"
}
var userLevel : Level = .one
struct User {
    var name : String
    var points : Int
    var level : Level
}
var user = User(name: "Mahmoud", points: 0, level: .two)
user.level
func seconds(level: Level) -> Int {
    switch level {
    case .one:
        return 10
    case .two:
        return 7
    case .three:
        return 5
    }
}
seconds(level: user.level)
user.level.rawValue

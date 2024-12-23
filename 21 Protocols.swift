protocol TableView {
    func numOfRows() -> Int
    func showItemAtIndex(index: Int)
}

class Users : TableView {
    var arrUsers = ["Mahmoud", "Ahmed", "Ali"]
    func numOfRows() -> Int {
        return arrUsers.count
    }
    
    func showItemAtIndex(index: Int) {
        print("index \(index), user \(arrUsers[index])")
    }
}
var user1 = Users()
user1.arrUsers
user1.numOfRows()
user1.showItemAtIndex(index: 0)

class Car {
    var name : String
    var color : String
    var model : Int
    init(name:String, color:String, model:Int){
        self.name = name
        self.color = color
        self.model = model
    }
    func move(){
        print("My Car \(car1.name) is moving")
    }
}
var car1 = Car(name: "BMW", color: "Black", model: 2020)
var car2 = Car(name: "Mercedec", color: "White", model: 2022)
print(car1.name, car1.model)
car1.move()

class Sales{
    var name : String
    var code : Int
    var salesItem : Int
    init(name:String, code:Int, salesItem:Int){
        self.name = name
        self.code = code
        self.salesItem = salesItem
    }
    func sales(){
        salesItem += 1
    }
}
var employer1 = Sales(name: "Mahmoud", code: 2456, salesItem: 0)
var employer2 = Sales(name: "Ahmed", code: 2345, salesItem: 1)
print(employer1.salesItem)
employer1.sales()
employer1.sales()
employer1.sales()
print(employer1.salesItem)

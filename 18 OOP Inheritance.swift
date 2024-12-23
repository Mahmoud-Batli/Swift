class Employer {
    var name : String
    var age : Int
    var jopTitle : String
    init(name:String, age:Int, jopTitle:String){
        self.name = name
        self.age = age
        self.jopTitle = jopTitle
    }
    
}

class Developer:Employer {
    var arrlang : [String]
    init(name:String, age:Int, jopTitle:String, arrlang:[String]){
        self.arrlang = arrlang
        super.init(name: name, age: age, jopTitle: jopTitle)
    }
    func addLang(){
        arrlang.append("C++")
    }
}

class Doctor:Employer{
    var operation : Int
    init(name: String, age: Int, jopTitle: String, operation: Int){
        self.operation = operation
        super.init(name: name, age: age, jopTitle: jopTitle)
    }
    func addOperation(){
        operation += 1
    }
}

var dev1 = Developer(name: "Mahmoud", age: 30, jopTitle: "Eng", arrlang: ["Swift","Java"])
var doc1 = Doctor(name: "Ahmed", age: 25, jopTitle: "Dr", operation: 0)
print(dev1.arrlang)
print(doc1.operation)
dev1.addLang()
doc1.addOperation()
print(dev1.arrlang)
doc1.addOperation()
doc1.addOperation()
print(doc1.operation)


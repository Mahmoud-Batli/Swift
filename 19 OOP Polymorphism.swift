class Studant {
    var name: String
    var age: Int
    var degree: Int
    var passed: String
    init(name:String, age:Int, degree:Int, passed: String) {
        self.name = name
        self.age = age
        self.degree = degree
        self.passed = passed
    }
    func examDegree(){
        passed = "failed"
    }
    func finalMsg() -> String {
        return "\(name) you are \(passed) and your degree is \(degree)"
    }
}

class Pass: Studant {
    override init(name:String, age:Int, degree:Int, passed: String) {
        super.init(name: name, age: age, degree: degree, passed: passed)
    }
    override func examDegree(){
        passed = "passed"
        degree = 100
    }
    override func finalMsg() -> String {
        return "\(name) you are \(passed) and your degree is \(degree)"
    }
}

class Graduated : Studant {
    var graduated : Bool
    init(name: String, age: Int, degree: Int, passed: String, graduated: Bool) {
        self.graduated = graduated
        super.init(name: name, age: age, degree: degree, passed: passed)
    }
    func isGraduated() -> String{
        graduated = false
        degree = 0
        return "\(name) you are \(passed) and your degree is \(degree) and your sign is \(graduated)"
    }
}
var studant1 = Studant(name: "Mahmoud", age: 15, degree: 0, passed: "failed")
var studant2 = Pass(name: "Ahmed", age: 13, degree: 0, passed: "failed")
var studant3 = Graduated(name: "Mazen", age: 17, degree: 100, passed: "true", graduated: true)

//print(studant1.finalMsg())
//print(studant2.finalMsg())
//print(studant3.finalMsg())
studant2.examDegree()
studant2.finalMsg()
studant3.isGraduated()
studant3.finalMsg()
studant3.examDegree()
//print(studant1.finalMsg())
//print(studant2.finalMsg())
//print(studant3.finalMsg())
//print(studant3.isGraduated())

var arrStudant : [Studant] = [studant1, studant2, studant3]
for studant in arrStudant {
    print(studant.finalMsg())
    if let graStud = studant as? Graduated {
        print(graStud.isGraduated())
    }
}

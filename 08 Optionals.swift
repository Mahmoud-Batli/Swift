var user : String?
user = "Ahmed"
if user == nil {
    print("Enter User")
    print(user!)
}else{
    print("Welcome \(user!)")
}

var a : Int?
var b : Int!
print(a ?? 1 + 1)
print(b ?? 2 + 2)

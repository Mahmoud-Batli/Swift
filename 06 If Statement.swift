var a = 5 , b = 10
if a > b {
    print("a is greater than b")
}else{
    print("b is greater than a")
}
var isPassed = true
if isPassed == false{
    print("Failed")
}else{
    print("Congratulation")
}

if isPassed {
    print("Congratulation")
}else{
    print("Failed")
}

if !isPassed {
    print("Failed")
}else{
    print("Congratulation")
}

var name = "Mahmoud"
var code = 2345
if name == "Mahmoud" && code == 1234 {
    print("Welcome")
}else{
    print("Access Denied")
}

var c : Int
if a > b {
    c = a
}else{
    c = b
}
print(c)

//another method ? = if , : = else
var d = a > b ? a : b
print(b)

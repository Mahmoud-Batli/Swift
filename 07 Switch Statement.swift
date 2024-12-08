//if
var score = 1
if score == 0 {
    print("Very Bad")
}else if score > 0 && score < 5 {
    print("Bad")
}else if score > 4 && score < 8 {
    print("Good")
}else{
    print("Excellent")
}

//switch
switch score {
case 0,1 : print("Very Bad")
case 1..<5 : print("Bad")
case 4..<8 : print("Good")
default: print("Excellent")
}

for i in 1...5 {
    if i == 3 {
//        break
        continue
    }
//    print(i)
}

var arrNum = [1,3,5,6,7,9]
for _ in 1...5 {
    for num in arrNum {
        if num % 2 == 0 {
            break
        }
//        print(num)
    }
}
//print("Finish")

// give if a name to break or continue the outer loop
var arrNum2 = [1,3,5,6,7,9]
outerLoop: for _ in 1...5 {
    for num2 in arrNum2 {
        if num2 % 2 == 0 {
//            break outerLoop
            continue
        }
        print(num2)
    }
}
print("Finish")

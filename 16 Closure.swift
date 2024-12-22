//Get Even Nums
func getEvenNums(arrNums:[Int]) -> [Int]{
    var arrFilterNum = [Int]()
    for num in arrNums{
        if num % 2 == 0{
            arrFilterNum.append(num)
        }
    }
    return (arrFilterNum)
}
//print(getEvenNums(arrNums: [1,2,3,4,5,6,7]))

//Get Even & Odd Nums
func getEvenNums(arrNums:[Int]) -> (arrEven:[Int] , arrOdd:[Int]){
    var arrEvenNum = [Int]()
    var arrOddNum = [Int]()
    for num in arrNums{
        if num % 2 == 0{
            arrEvenNum.append(num)
        }else{
            arrOddNum.append(num)
        }
    }
    return (arrEvenNum , arrOddNum)
}
//print(getEvenNums(arrNums: [1,2,3,4,5,6,7]))

//Get Even Nums Using closures
//func getFilterNum(closure:(Int) -> Bool , arrNums:[Int]) -> [Int]{
//    var arrFilterNum = [Int]()
//    for num in arrNums{
//        if closure(num){
//            arrFilterNum.append(num)
//        }
//    }
//    return arrFilterNum
//}
//let arrFilterd = getFilterNum(closure: { (num) in
//    return num % 2 == 0
//}, arrNums: [1,2,3,4,5,6,7])
//print(arrFilterd)

//or
func getFilterNum(closure:(Int) -> Bool ,arrNums:[Int]) -> [Int]{
    var arrFilterNum = [Int]()
    for num in arrNums{
        if closure(num){
            arrFilterNum.append(num)
        }
    }
    return arrFilterNum
}
func evenNum(num:Int) -> Bool{
    return num % 2 == 0
}
func oddNum(num:Int) -> Bool{
    return num % 2 != 0
}
let arrFilterd = getFilterNum(closure: evenNum(num:), arrNums: [1,2,3,4,5,6,7])
//print(arrFilterd)


func printSquare(closure:(Int) -> Int, arrNums:[Int]){
    for num in arrNums {
        print(closure(num))
    }
}
//Without return
//printSquare(closuer: { (num1) -> Int in num1 * num1 }, arrNums: [3,5,6])
//or
printSquare(closuer: {$0 * $0}, arrNums: [3,5,6])

var arrNames = ["Ahmed","Mahmoud","ali","mazen"]
var arrTemp = arrNames
arrTemp = arrTemp.filter({ (name) -> Bool in
    return name.hasPrefix("A") || name.hasPrefix("a")
})
//Or
//arrTemp = arrTemp.filter({$0.hasPrefix("M") || $0.hasPrefix("m")})
print(arrTemp)

//Autoclosure
func printMsg(msg:String, closure: @autoclosure () -> Bool){
    if closure(){
        print(msg)
    }
}
printMsg(msg: "Hello", closure: true)


func printMsg2(msg:String, closure: () -> ()){
    print("Welcom to \(msg)")
    closure()
}
printMsg2(msg: "Egypt") {
    print("Have a nice time")
}

//Escaping
var arrClosure : [() -> ()] = []
func printMsg3(msg: String, closure: @escaping () -> ()){
    print("Welcom to \(msg)")
    closure()
    arrClosure.append(closure)
}
printMsg3(msg: "Egypt") {
    print("Have a nice time")
}
print(arrClosure)

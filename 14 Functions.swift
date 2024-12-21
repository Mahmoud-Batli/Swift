func showMsg1(){
    let msg = "Welcome to My App"
    print(msg)
}
print("Hello!")
//showMsg1()

func showMsg2(msg: String){
    print(msg)
}
//showMsg2(msg: "App is running")

func sum(num1:Int , num2:Int) -> Int{
    let res = num1 + num2
    return res
}
//print(sum(num1: 5, num2: 3))

//using Optionals
func sum2(num1:Int! , num2:Int) -> Int {
    return (num1 ?? 10) - num2
}
//print(sum2(num1: nil, num2: 7))

func minMax(arrNum:[Int]) -> (min:Int , max:Int){
    var minNum = arrNum[0]
    var maxNum = arrNum[0]
    for num in arrNum{
        if num < minNum{
            minNum = num
        }else if num > maxNum {
            maxNum = num
        }
    }
    showMsg2(msg: "Min Num = \(minNum) Max Num = \(maxNum)")
    return (minNum , maxNum)
}
var nums = [1,2,3,4,5]
//print(minMax(arrNum: nums))

//call by value
func priceWithTax(price:Double) -> Double{
    return price + (price * 0.14)
}
var price = 100.0
priceWithTax(price: price)
print(priceWithTax(price: price))

//or

//call by reference
//func priceWithTax(price: inout Double) -> Double{
//    price = price + (price * 0.14)
//    return price
//}
//var price = 100.0
//priceWithTax(price: &price)
//print(price)

func operation (num1:Int , num2:Int) -> (sum:Int , sub:Int){
    func getSum() -> Int {
       return num1 + num2
    }
    func getSub() -> Int {
        return num1 - num2
    }
    return (getSum() , getSub())
}
print(operation(num1: 5, num2: 10))

//get factorial
func getFactorial(num:Int) -> Int{
    if num == 1 {
        return 1
    }else{
        return num * getFactorial(num: num - 1)
    }
}
print(getFactorial(num: 5))



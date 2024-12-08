//Ex.1
var user1 = ("Mahmoud" , 35 , "IT" , 562.32)
print(user1.0)

//Ex.2
var user2 = (name:"Ali" , age:23 , jop:"HR" ,salary: 345.356)
print(user2.jop)

//to put values in varibales and skipe the last value
var (name,age,jop,_) = user1
print("My name is \(name)")

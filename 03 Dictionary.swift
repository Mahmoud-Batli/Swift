var nums : [Int:Int]
nums = [1:1 , 2:2 , 3:3]

var employers : [String:Any]
employers = ["Mahmoud":"Batli" , "Code":1234 , "Job":"IT" , "Has car":true]
print(employers)

//add key & value
employers["Phone"] = 012345
print("Dic after new key and value \(employers)")
//replce value
employers["Code"] = 5555
print(employers)
employers.updateValue(9999, forKey: "Code")
print(employers)

//remove value
employers.removeValue(forKey: "Job")
print(employers)

//when print by key
print(employers["Code"])

//remove optional
print(employers["Code"]!)

//print value if key not existing
print(employers["ID"] ?? 9876)

print(employers["Code"]!)


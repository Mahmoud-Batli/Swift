var zipCodes : [Int]
zipCodes = [12345 , 23456 , 34567]
print(zipCodes)

var cities = ["Cairo","Hurghada","Giza"]
print(cities[0])

//add anew value in the end
cities.append("Alex")
print("Array after appened \(cities)")

//add more than value in the end
cities += ["luxor","Sinai"]
print("Array after new append \(cities)")

//add value in the specific index
cities.insert("Qena", at: 4)
print("Array after insert \(cities)")

//replace value
cities[1] = "Aswan"
print("Array after replace \(cities)")

//remove value
cities.remove(at: 2)
print("Array after remove \(cities)")

print(cities.count)

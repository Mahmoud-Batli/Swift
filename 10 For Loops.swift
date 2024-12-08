//print from 0 to 10
for i in 1...10 {
    print(i)
}

// print from 10 to 0
var count = 10
for _ in 1...10 {
    print(count)
    count -= 1
}

for i in stride(from: 1, to: 10, by: 3){
    print(i)
}

for i in stride(from: 10, through: 1, by: -3){
    print(i)
}

//print value in array
var nums = [10,20,30,40]
for i in 0...3 {
    print(nums[i])
}

for (index,value) in nums.enumerated() {
    print("index = \(index) value = \(value)")
}

var nums2 = [11,22,33,44,55]
for i in 0...nums2.count-1{
    print(nums2[i])
}

var nums3 = [66,77,88,99,00]
for i in 0..<nums3.count{
    print(nums3[i])
}

for nums4 in nums3 {
    print(nums4)
}

//print even nums
var nums5 = [66,77,88,99,00]
for i in 0..<nums5.count{
    if nums5[i] % 2 == 0 {
        print("index \(i) value \(nums5[i])")
    }
}

//print odd nums
for i in 0..<nums5.count{
    if nums5[i] % 2 == 1 {
        print("index \(i) value \(nums5[i])")
    }
}

//print key and value in dictionary
var userDic = ["name":"Mahmoud" , "age":"35" ,"job":"IT"]
for item in userDic {
    print(item)
}

//without key & value
for item in userDic {
    print("\(item.key)" , "\(item.value)")
}

//or
for (key,value) in userDic {
    print("\(key)" , "\(value)")
}

import Cocoa

//Swift Tour 1
var greeting = "Hello, playground"
var age = Double(23)

print(greeting)

age += 1

print(age)

var name:String = "Park Seungho"

print(name)

let pi = 3.14
let msg = "value of pi is \(pi)"

print(msg)

let apples = 3
let oranges = 5

let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

print(appleSummary)
print(fruitSummary)

//Swift Tour 2

var names = ["Kim", "Lee", "Park"]
let Kim = names[0]
let count = names.count

print(type(of: names))
print(type(of: Kim))
print(type(of: count))

names.isEmpty
names.first
names.last

names.append("Choi")
names.sort()

print(names)

names.remove(at: 2) //names[2] 삭제

print(names)

let ages = [13, 18, 34, 29]
var cost = 0
for age in ages{
    if age > 19{
        cost += 20
    }
    else{
        cost += 15
    }
}
print(cost)



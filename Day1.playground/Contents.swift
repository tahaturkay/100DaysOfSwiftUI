import UIKit

var greeting = "Hello, playground"
greeting = "Selamlar"
print(greeting)
greeting = "Saygılar"
print(greeting)


let surname = "aktaş"
let conventionWord = "this is the way among the swift developers le Camel"
let managerName = "taha"

let multiline = """
multiline 
string
created
"""

let length = multiline.count
print(length)

print(managerName.uppercased())

print(surname.hasSuffix("aş"))
print(greeting.hasPrefix("Saygı"))
print(greeting.hasPrefix("SAygı"))

var score = 10
let money = 10_000
print(money/2)
print(score*score)

score += 2
print(score)

print(money.isMultiple(of: 4))
print(money.isMultiple(of: 3))

let number = 0.1 + 0.2
print(number)

var notDouble = 2
print(Double(notDouble)+number)

print(number*2)

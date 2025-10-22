let goodDogs = true
let gameOver = false

let isMultiple = 120.isMultiple(of: 3)

var gameIsntOver = !gameOver
gameIsntOver.toggle()
//If we assign gameIsntOver as let, it would give error because we can't change let values

let name = "Taha Turkay "
let surName = "Aktaş"
let fullName = name + surName
let age = 21
let message = "Hello I'm \(fullName) and I'm \(age) years old. Type of age is \(type(of: age))"
//If we insert age without backslash it would give error because we cant add Int and strings
var inMath = "5 x 5 is \(5*5)"

//This is called string interpolation


//Celcius to Fahrenheit converter
var celcius = 3
var fahrenheit = Double(celcius) * 9 / 5 + 32
let result = "\(celcius)°C is equals to \(fahrenheit)°F"

// We check conditions with if block
let alive = true
if alive{
    print("Well done!")
}

var speed = 120
if speed > 100{
    print("Slow down!")
}

// We can compare two variables
var average = 78
var score = 77
if score >= average{
    print("You pass the exam!")
}

let item1 = "a"
let item2 = "b"
// According to ASCII number if statement checks their magnitude
if item1 < item2{
    print("Alphebatically ordered")
}

// We can use functions in if statemant
var rezervation = ["Taha","Turkay","Müslüm"]
rezervation.append("Türüt")
if rezervation.count > 3{
    print("There is no enough space")
    rezervation.removeLast()
}
if rezervation.count <= 3{
    print("Enough space")
    print(rezervation)
}

// with "==" operation we check whether they are same or not
// By using else statement, if "if" condition doesnt satisfied our code dives into the else statement
let password = "super-secret-password"
let input_password = "isnt-super-secret-password"

if password == input_password{
    print("Welcome \(rezervation[0])!")
}
else{
    print("Wrong password \(rezervation[0])")
}

// By using else if we can check more than one conditions
let condition1 = false
let condition2 = false
if condition1{
    print("Condition1 is satisfied")
}
else if condition2{
    print("Condition1 isn't satisfied but condition2 is satisfied")
}
else{
    print("None of the conditions are satisfied")
}

// By using "&&" we check two condition at one if statement. So that, we can accept a range as satisfaction.
let age = 27
if age > 25 && age < 40{
    print("Middle age")
}

// Thanks to "||" operation if one of the condition is satisfied it dives into statemant code. So, it basically work like "OR".
let experience = 3
let language = "EN"
if experience > 2 || language == "DEU"{
    print("You are hired")
}

enum Weekdays{
    case monday,tuesday,wednesday,thursday,friday,saturday,sunday
}
var current_day = Weekdays.friday
if current_day == .monday || current_day == .tuesday || current_day == .wednesday{
    print("Time to eat potato mash!")
}
else if current_day == .thursday{
    print("Lasagna day!")
}
else{
    print("PIZZA DAYSS!!")
}

// By using switch case we don't need to rewrite the variable we want to check. It makes code easy to read. For example;
// All statements must be specified by switch case!
enum Weather {
    case sun, rain, wind, snow, unknown
}
let weather = Weather.sun
switch weather{
case .sun:
    print("Nice weather")
case .rain:
    print("Take your umbrella")
case .wind:
    print("Wear your jacket")
case .snow:
    print("Don't forget your gloves")
case .unknown:
    print("I can't predict what is gonna happen?")
}

// For cases such can't be specified we can use default:
// By using falltrough even if current case satisfied switch case goes to the next case.
let lecture = "CNG351"

switch lecture{
case "SNG331":
    print("Computer Organization")
case "CNG351":
    print("Data Managment and File Structure")
    fallthrough
case "SNG330":
    print("Software Design")
default:
    print("I don't know this lecture")
}
// Switch case should be used if statements are exhaustive. Also, in switch case statement is being read only once so it gives a little acceleration if the checking process is being used multiple of times by functions or etc.


// #####  Ternary opertaions  #####
// It checks statement and return one of two values.

let gpa = 3.01
let honorStudent = gpa >= 3.00 ? "Yes" : "No"

// We don't have to assign the value. We can directliy print it.
let sleepTime = 9
print(sleepTime >= 8 ? "Deligthful sleep" : "You need to sleep more!")

var checkIn = ["Taha", "Zülal", "Bora","Furkan"]
let reservation = checkIn.isEmpty ? "There is no reservation" : "\(checkIn.count) people made a reservation"
print(reservation)
// Ternary will be useful in SwiftUI in same cases. At some point we can't solve the problem with regular if/else block so we might be have to use ternary operator
// Ternary operator makes the code hard to read so, try to avoid it but, it is good to be aware of such operator is exist.

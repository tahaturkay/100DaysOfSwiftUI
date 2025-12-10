// Normally we assing our values initially and Swift take care of the type allocation automatically.
// But sometimes we might not want to assign our values immediately but we want to set the type.

// This is what we usually do
let name = "Taha"
var age = 21

// What we will do is;
let surname: String = "Aktaş"
let score: Int = 50

// For example our initial value will be Int but end of some conculusion we might get decimals, so what we will do is;
var point: Double = 0
point += 0.5

// Specialization of array will be like;

var song: [String] = ["Numb", "Haydar Haydar", "Got 2 love u"]

// For dictionary specialization it will be like;
var menu: [String:Int] = ["Burger": 200, "Pizza":230]
menu["Chicken Tenders"] = 320
print(menu)

// Set specialization will be like;
var ID: Set<Int> = Set([2640274,2631552])

// For empty creation of arrays, dicts, sets we can use these methods, but we have to use paranthesis while creating them. For example
var list_of_fruits: [String] = [String]()
list_of_fruits.append("Apple")
list_of_fruits.append("Pineapple")

// We can also first use type annotation and then create a empty arrays such as;
var cars: [String] = []
cars.append("BMW")
cars.append("Toyota")

// Also we can create empty arrays with type inference. (We use paranthesis)
var clock_brand = [String]()
clock_brand.append("Rolex")
clock_brand.append("Seiko")

// We use these type annotations when we couldn't assign our values yet. Such as when user enter their name, the type must be string. Before user enter their name the type notation must be set to string. For example;

var userName: String
userName = "tahaturkay"

// But thanks to swift by assigning initial values it automatically set the type we want. For example;
var money = 0.0
// So that type of money is selected Double automatically
print(type(of: money))

// Checkpoint 2
//This time the challenge is to create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

var attendance = ["Taha","Mustafa","Bora","Furkan","Kerem","Taha"]
var unique_of_attendance = Set(attendance)
attendance.count
unique_of_attendance.count

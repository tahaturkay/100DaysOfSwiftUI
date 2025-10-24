var friends = ["Furkan", "Bora"]
var numbers = [10,2,3]
numbers.append(61)
// If we try to write numbers.append("Turkay") it will give error because arrays hold only one type of items

// There is several type of defining the type of array
var scores = Array<Int>()
scores.append(100)
var points = [Int]()
points.append(200)
var fruits = ["Apple"]

// .count gives us the length of arrays
numbers.count

// with .remove(at:) we can remove items at specific index, or by .removeAll we can remove all the items in the array
numbers.remove(at: 2)
print(numbers)

// with .contains(item) we can check whether the item is in the array or not. It gives boolean value which is true or false
numbers.contains(2)

// by using .sort() it sorts the array alphabetically or numerically
numbers.sort()

// by using .reverse() array is being reversed
numbers.reverse()

// we can store only one type of key same as arrays
let name = ["name": "Taha",
            "surname": "aktaş",
            "age": "21"]
name["name"]

// By using default we can initialize a value for empty situations
name["name", default: "Unknown"]

let models = [2020: "opel",2019:"golf"]

// We can create empty dictionaries by defining their data types
// We can update the values
var ballondor = [String:Int]()
ballondor["Ronaldo"] = 7
ballondor["Messi"] = 5
ballondor["Ronaldo"] = 8

// When creating a set, it removes duplicated values. Also order isn't important, complitaly random.
let lectures = Set(["351","353","303","303"])

// We add items into the set by using .insert instead of .append
var vegetables = Set<String>()
vegetables.insert("Tomato")
vegetables.insert("Cucumber")
vegetables.insert("Cucumber")
vegetables.count
vegetables.contains("Tomato")

// Thanks to enum we create our own datatypes with cases. Each of the days now a theirown data
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var day = Weekday.monday
type(of: day)
// .tuesday is weekday so we don't have to write Weekday. Swift optimizes it for us
day = .tuesday

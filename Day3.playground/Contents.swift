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

numbers.count

numbers.remove(at: 2)
print(numbers)
numbers.contains(2)

numbers.sort()
numbers.reverse()

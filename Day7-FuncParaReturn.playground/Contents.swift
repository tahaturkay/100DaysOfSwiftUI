import Cocoa

// By defining functions with "func" we can reuse the code block
func loginScreen(){
    print("Welcome!!!")
    print("This is the login screen")
}
loginScreen()

// We can enter paramter inside of the paranthesis
func multipleShower(number: Int){
    for i in 1...5{
        print("\(i)x\(number)=\(i*number)")
    }
}
let selectedNumber = 6
multipleShower(number: selectedNumber)

// We can have multiple paramteres inside the function.
func extender(start:Int,end:Int){
    for i in start...end{
        print("Extended value is \(i*10)")
    }
}
extender(start: 3, end: 7)

// In order to return value from functions, we needto specify data type with arrow and use "return" module at the end.
func squareRoot(number: Double) -> Double{
    print("Square root is calculated...")
    return sqrt(number)
}
let numberSquare = 225.0
let result = squareRoot(number: numberSquare)
print("Result is: \(Int(result))")

// If function has one line of code, swift knows that that line will give boolean value so, we don't have to write return.
func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

func rollDice() -> Int {
    Int.random(in: 1...6)
}
rollDice()

// If we want to return more than one value we should use array
func celebrity() -> [String]{
    ["Aykut","Halil"]
}
print(celebrity()[0])
print(celebrity()[1])

// We can also return dictionaries
func bookInfo() -> [String: String]{
    ["Orhun Kitabeleri":"Göktürkler","Seyehatname":"Hezarfen"]
}
let bookChecker = bookInfo()
print(bookChecker["Orhun Kitabeleri", default: "No Info"])

// Instead of these, we can return our values as tuples. Other than dicts, tuples doesn't need to have a default value because swift knows that if tuple is created there is a value for corresponding key. (We don't have to have a key, we can acces elements by index number as well)
func chapters() -> (firstChapter: String, lastChapter: String){
    (firstChapter:"Data Managment",lastChapter:"File Structures")
}
print(chapters().firstChapter)

func dividers() -> (Int, Int){
    (2,3)
}
print(dividers().0)
// We don't have to assign values one by one. We can assign them at one line of code
let (divider1, divider2) = dividers()
print(divider2)

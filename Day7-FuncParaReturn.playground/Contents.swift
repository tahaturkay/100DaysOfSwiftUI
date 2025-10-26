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

func rollDice(surface: Int, count: Int) -> [Int]{
    var rolledDice = [Int]()
    for i in 1...count{
        rolledDice.append(Int.random(in: 1...surface))
    }
    return rolledDice
}
print(rollDice(surface:12, count:6))

// As you can see using string label name can create confusion instead we can ignore the label name by using "_".
func isUpperCased(string: String) -> Bool{
    string == string.uppercased()
}
let string = "TAHA"
isUpperCased(string: string)

// So we can rewrite this code like this.
func isLowerCased(_ string: String) -> Bool{
    string != string.uppercased()
}
let name = "taha"
isLowerCased(name)

// We use "number" label name for internally and use "for" for externally label name. We write "for" external name because it sounds more sense. "Print time table for 5 times". If we wouldn't write internal name, for wouldnt work inside code block.
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

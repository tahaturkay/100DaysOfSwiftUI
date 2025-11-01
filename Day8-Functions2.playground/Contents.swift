// After defining parameters type if we equal this value to some initial value, it will be default value for this parameter.
func rollingDice(surface: Int, for count: Int=3) -> [Int]{
    var rolledStat = [Int]()
    for _ in 1...count{
        var rolled = Int.random(in: 1...surface)
        rolledStat.append(rolled)
    }
    return rolledStat
}
rollingDice(surface: 8, for: 5)
// If function doesn't have any parameter fpr "for" it will automatically take this value as default value which is "3".
rollingDice(surface: 6)

// By calling "keepingCapacity" removeAll will remove all the elements in the "members" but the capacity size will be keep available for future addition into the array. If we wouldn't wrote this the memory also would be released as suppoused to be.
// So we can say that the parameter of keepingCapacity is also has default value "false" because we can use this function without writing "keepingCapacity:false".
var members = ["Taha","Zülal"]
members.removeAll(keepingCapacity: true)

// Handling errors
// Error is existing type.
enum PasswordError: Error{
    case short,obvious
}
let password = PasswordError.short
print(type(of: password))

// If "error" will be thrown in the function before assigning return type we write "throws". In function code block first we write throw conditions.
// We just throw errors, we don't handle them
// If ne error throwed, function work as normal and return specified type.
func passwordChecker(_ userPassword: String) throws -> String{
    if userPassword.count < 5{
        throw PasswordError.short
    }
    if userPassword == "12345" || userPassword == "password"{
        throw PasswordError.obvious
    }
    if userPassword.count < 8{
        return "Weak but OK"
    }
    else if userPassword.count < 10{
        return "Good password"
    }
    else{
        return "Excellent password!"
    }
}
// After error throwed the rest of the code won't work.
//try passwordChecker("12345")
try print(passwordChecker("taha1234"))

//Starting a block of work that might throw errors, using do.
//Calling one or more throwing functions, using try.
//Handling any thrown errors using catch.
do {
    let result = try passwordChecker("123456", )
    print("Rate of password is: \(result)")
} catch {
    print("Handle errors here")
}

// We can catch specific erors.
let userPassword = "12345"
do {
    let result = try passwordChecker(userPassword)
    print("Rate of password is: \(result)")
} catch PasswordError.short {
    print("Password is short!")
} catch PasswordError.obvious {
    print("Password is too obvious")
} catch {
    print("There was an error.")
}

// ##### Checkpoint - 4 #####

//write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:
//You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
//If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
//You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
//If you can’t find the square root, throw a “no root” error.

let number = 10_001

enum Boundaries: Error{
    case outOfBounds
}
enum noRoot: Error{
    case noRoot
}

func squareRoot(_ value: Int) throws -> Int{
    if value > 10_000 || value < 1{
        throw Boundaries.outOfBounds
    }
    for i in 1...100{
        if i*i == value{
            return i
        }
    }
    throw noRoot.noRoot
}

do {
    let result = try squareRoot(number)
} catch Boundaries.outOfBounds{
    print("Number is out of bounds")
} catch noRoot.noRoot {
    print("there is no root for such number")
}

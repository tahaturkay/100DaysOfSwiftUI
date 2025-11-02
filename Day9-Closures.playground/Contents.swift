// We can assign functions to a variable
func hello(){
    print("Hello world!")
}

// If we use parantheses after hello function we would assing return valıe of the hello to the helloMessage
var helloMessage = hello
helloMessage()

// Also instead of creating seperate function we can directliy assign a functionality to the variables or constants
let sayHello = {
    print("Directliy created Hello message")
}

// We can put parameters to the closures. To define end of the parameters and return type we write "in" and the rest of the code is body part.
// We don't use parameter name in closures
// Also we can not use external parameter labels in closures
let greetingPerson = { ( name : String) -> String in
    return "Wellcome \(name)"
}
print(greetingPerson("Taha"))

// We don't use parameter name when we copy the function to the a constant or variable
func studentID(for id: Int) -> String {
    if id == 2640264 {
        return "Taha Turkay Aktaş"
    } else {
        return "Anonymous"
    }
}

let idChecker: (Int) -> String = studentID
let user = idChecker(2640264)
print(user)


// Why closures is useful? Here is an example. We can customize the sort function.

// Here we want to sort the team first captain and then alphabetically the rest of the team.
let team = ["Taha", "Atakan", "Fatih", "Oğuz", "Yarkın"]

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Fatih" {
        return true
    } else if name2 == "Fatih" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// We can directliy customize the sort function with closures
let captainFirstTeam2 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

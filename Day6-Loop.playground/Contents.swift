// "for" is one of the loop module.
let hobbies = ["Tennis","Handball","watching tv"]
for hobby in hobbies{
    print("I love \(hobby)")
}
// In here, hobby variable traversal the hobbies one by one

// By usin a...b we define a range. By using for we traversal this range.
for i in 1...5{
    print("\(i)x\(i)= \(i*i)")
}

// We can put loop inside a loop
for i in 1...6{
    for j in 11...15{
        print("\(i)x\(j)= \(i*j)")
    }
}

// By using ..< we travelsal range of 1...5 but 5 is excluded. It is useful when we work with an array because, index starts from 0 at arrays.
for i in 1..<5{
    print("\(i)x\(i)= \(i*i)")
}

// When we don't need the actual variable inside the array, we can just use underscore in order to let loop code work just fine.
let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]
for _ in names {
    print("[CENSORED] is a secret agent!")
}

// We can select and print specific part of arrays. Also not defining the last index by using a... we print the array from start index a to last index.
let size = [35,36,37,38,41,42]
print(size[0...3])
print(size[2...])

// "While" is another loop construction. We generally use this when we don't know how many times that code block would run. Using for loop as possible is recommended but, knowing the existence of while is okay.
var counter = 10
while counter > 0{
    print("\(counter) seconds left!")
    counter -= 1
}

// We can create random variables by using random(in: ).
var random1 = Int.random(in: 1...10)
let random2 = Double.random(in: 3...4)

let number = 9
while random1 != number{
    random1 = Int.random(in: 1...10)
}
print("I found the number \(random1)")

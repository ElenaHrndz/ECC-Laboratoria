import UIKit

// writing functions

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    
    print(message)
}

printHelp()

// accepting parameters

print("Hellow, world")

func square(number: Int) {
    print(number * number)
}

square(number: 8)

// returning values

func square1(number: Int) -> Int {
    return number * number
}

let result1 = square1(number: 8)
print(result1)

// parameter labels

func square2(number: Int) -> Int {
    return number * number
}

let result2 = square2(number: 8)

func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "Mario")

// omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Mario")

// default parameters

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Paco")
greet("Paco", nicely: false)

// variadic functions

print("Haters", "gonna", "hate")

func squqre3(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

squqre3(numbers: 1, 2, 3, 4, 5)

// writing throwing functions

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
    
}

//running throwing functions

do {
    try  checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password")
}

// inout parameters

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

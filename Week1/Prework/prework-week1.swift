// i Prints "Hello, world!"

import Foundation
print("Hello, World")

// ii Simple Values

// use "let" to make a constant and "var" to make a variable

var myVariable = 42
myVariable = 50
let myConstant = 42

// specify the type by writing it after the variable

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

let experiment: Float = 4

// To convert a value to a different type, explicitly make an instance of the desired type

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

// let widthLabel = label + (width)
// error: binary operator '+' cannot be applied to operands of type 'String' and 'Int'

// To include values in strings: Write the value in parentheses, and write a backslash (\) before the parentheses.

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let name = "Pato"
var hi = "Hello, \(name)"

// Use three double quotation marks (""") for strings that take up multiple lines. Remove the indetation at the start of each quoted line.

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
// Create arrays and dictionaries []

var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

// Add elements

shoppingList.append("blue paint")
print(shoppingList)

// Empty array  or dictionary

let emptyArray = [String]()
let emptyDictionary = [String: Float]()

// If type information can be inferred

shoppingList = []
occupations = [:]

//iii Control Flow

// if and switch to conditionals
// for-in, while and repeat-while to loops

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
// Prints "11"

// In an if, the coonditional must be boolean
// use ? after the type of a value to mark the value as optional

var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false"

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

//Another way to handle optional values is to provide a default value using the ?? operator. If the optional value is missing, the default value is used instead.

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

// Switches support any kind of data and a wide variety of comparison operations

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
// Prints "Is it a spicy red pepper?"

// for-in is use to itetate over items in a dictionary

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
// Prints "25"

// while is use to repeat a block of code until the condition change

var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Prints "128"

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
// Prints "128"

// can keep an index in a loop by using ..<  to make a ranfe of item

var total = 0
for i in 0..<4 {
    total += i
}
print(total)
// Prints "6"

// iii Enumerations

// use enum to create an enumeration. They can have mothods associated

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue

// Swift assigns the raw values starting at zero and incrementing by one each time. It can be change by specific values.
// Ace is explicitly given a raw value of 1, and the rest of the raw values are assigned in order.
// Use the rawValue property to access the raw value of an enumeration case.

// init?(rawValue:)  is ude to initialize an instance of an enumeration from as a raw value

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

//in cases where there isn’t a meaningful raw value, you don’t have to provide one.

enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
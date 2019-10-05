import Foundation
// Complex Types

// arrays

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

print(beatles[1])

// sets

let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

print(colors)
print(colors2)

// tuples

var name = (first: "Taylor", last: "Swift")

print(name.0)
print(name.first)

name.0 = "Pepe"

print(name.first)

// arrays vs set vs tuples

// tuple related values
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

// set must be unique
let set = Set(["aardvark", "astronaut", "azalea"])

// array
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// dictionaries

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

print(heights["Ed Sheeran"])

// dictionary default values

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

print(favoriteIceCream["Paul"])
print(favoriteIceCream["Charlotte"])
print(favoriteIceCream["Charlotte", default: "Unknown"])

// creating empty collections

var teams = [String: String]()
// add entries
teams["Paul"] = "Red"

//array
var show = [Int]()

//set
var words = Set<String>()
var numbers = Set<Int>()

//arrays and dictionaries
var scores = Dictionary<String, Int>()
var results = Array<Int>()

// enumerations

let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

// enums associaled values

// enum Activity {
//     case bored
//     case running
//     case talking
//     case singing
// }

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// enum raw values

// enum Planet: Int {
//     case mercury
//     case venus
//     case earth
//     case mars
// }

let earth = Planet(rawValue: 2)

// assign specific values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

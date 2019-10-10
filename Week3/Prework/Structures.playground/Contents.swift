import UIKit

struct Person {
    var name: String
    func sayHello() {
        print("Hello, there! My name is \(name)!")
    }
}

let firstPerson = Person(name: "Jasmine")
print(firstPerson.name)

let person = Person(name: "Zane")
person.sayHello()


// instances

/*example
struct Shirt {
  var size: Size
  var color: Color
}
 // Defines the attributes of a shirt.

let myShirt = Shirt(size: .xl, color: .blue)
 // Creates an instance of an individual shirt.
let yourShirt = Shirt(size: .m, color: .red)
 // Creates a separate instance of an individual shirt. */

struct Car {
    var make: String
    var model: String
    var year: Int
    var topSpeed: Int
    
    func startEngine() {
        print("The \(year) \(make) \(model)'s engine has started.")
    }
    
    func drive() {
        print("The \(year) \(make) \(model) is moving")
    }
    
    func park () {
        print("The \(year) \(make) \(model) is parked.")
    }
}

let firstCar = Car(make: "Honda", model: "Civic", year: 2010, topSpeed: 120)
let secondCar = Car(make: "Ford", model: "Fusion", year: 2013, topSpeed: 125)

firstCar.startEngine()
firstCar.drive()

// initializers

var string = String.init() // ""
var integer = Int.init() // 0
var bool = Bool.init() // false

/* shorthand version
var string = String() // ""
var integer = Int() // 0
var bool = Bool() // false*/

    // default values
struct Odometer {
    var count: Int = 0
}

let odometer = Odometer()
print(odometer.count)

    // memberwise initializers

let odometer1 = Odometer(count: 27000)
print(odometer1.count)

    // custom initializers
struct Temperature {
    var celsius: Double
    
    init(celsius: Double) {
        self.celsius = celsius
    }
    
    init(fahrenheit: Double) {
        celsius = (fahrenheit - 32) / 1.8
    }
    
    init(kelvin: Double) {
        celsius = kelvin - 273.15
    }
}

let currentTemperature = Temperature(celsius: 18.5)
let boiling = Temperature(fahrenheit: 212.0)

let freezing = Temperature(kelvin: 273.15)

print(currentTemperature.celsius)
print(boiling.celsius)

print(freezing.celsius)
//let temperature = Temperature(celsius: 30.0)
//
//let fahrenheitValue = 98.6
//let celsiusValue = (fahrenheitValue - 32) / 1.8
//
//let temperature = Temperature(celsius: celsiusValue)

    // instance methods

struct Size {
    var width: Double
    var height: Double
    
    func area() -> Double {
        return width * height
    }
}

let someSize = Size(width: 10.0, height: 5.5)
let area = someSize.area()

    // mutating methods

struct Podometer{
    var count: Int = 0 //default value
    
    mutating func increment() {
        count += 1
    }
    
    mutating func increment(by amount: Int) {
        count += amount
    }
    
    mutating func reset() {
        count = 0
    }
}

var podometer = Podometer()
podometer.increment()
podometer.increment(by: 15)
podometer.reset()

    // computed properties

struct AllTemperature {
    var celsius: Double
//    var fahrenheit: Double
//    var kelvin: Double
    
    var fahrenheit: Double {
        return celsius * 1.8 + 32
    }
    
    var kelvin: Double {
        return celsius + 273.15
    }
    
//    init(celcius: Double) {
//        self.celcius = celcius
//        fahrenheit = celcius * 1.8 + 32
//        kelvin = celcius + 273.15
//    }
//
//    init(fahrenheit: Double) {
//        self.fahrenheit = fahrenheit
//        celcius = (fahrenheit - 32) / 1.8
//        kelvin = celcius + 273.15
//    }
//
//    init(kelvin: Double) {
//        self.kelvin = kelvin
//        celcius = kelvin
//        fahrenheit = celcius * 1.8 + 32
//    }
}

//let allTemperature = AllTemperature(celcius: 0, fahrenheit: 32, kelvin: 273.15)

//let currentAllTemperature = AllTemperature(celcius: 18.5)
//let boiling2 = AllTemperature(fahrenheit: 212.0)
//let freezing2 = AllTemperature(kelvin: 273.15)

let currentAllTemperature = AllTemperature(celsius: 0.0)
print(currentAllTemperature.fahrenheit)
print(currentAllTemperature.kelvin)

    // property observers

struct StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

var stepCounter = StepCounter()
stepCounter.totalSteps = 40
stepCounter.totalSteps = 100

    // type properties and methods

// type properties is used when the property is related to the type, but not caracteristic itself
// example
struct Temperature3 {
 static var boilingPoint = 100
 }
 
let boilingPoint = Temperature3.boilingPoint
 
let smallerNumber = Double.minimum(100.0, -1000.0)

    // copying

var aSize = Size(width: 250, height: 1000)
var anotherSize = aSize

aSize.width = 500

print(aSize.width)
print(anotherSize.width)

    // self

//current instance of the object
/*struct Car2 {
    var color: Color
    
    var description: String{
        // “It can be used within an instance method to point to the current instance of the object.”
        return "This is a \(self.color) car."
        //“ the Swift compiler recognizes when property or method names exist on the current object, and makes using self optional.”
        return "This is a \(color) car."

    }
}*/

struct Temperature4 {
    var celsius: Double
    
    init(celsius: Double) {
        self.celsius = celsius
    }
}

    // variable properties

struct CarExample {
    var make: String
    var year: Int
//    var color: Color
    var topSpeed: Int
}

var firstCarExample = CarExample(make: "Honda", year: 2010, color: .blue,  topSpeed: 120)
var secondCarExample = firstCarExample
secondCarExample.make = "Ford"

let firstCarExample = CarExample(make: "Honda", year: 2010, color: .blue,
topSpeed: 120)
firstCarExample.color = .red //Compiler error!

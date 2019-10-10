//classes, inheritance

import UIKit

class Person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello, there!")
    }
}

let person = Person (name: "Jasmine")
print(person.name)
person.sayHello()


    // inheritance

        //base class
class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise () {
        
    }
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")

        //Subclas
/*class SomeSubclass: SomeSuperclass {
    //subclass definition gose here
} */

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true

bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")

class Tandem: Bicycle {
    var currentNumberOfPassangers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassangers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo!")
    }
}

        // override methods and properties
let train = Train()
train.makeNoise()

class Car: Vehicle {
    var gear = 1
    override var description: String{
        return super.description + "in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")

        // override initializer
class Person1 {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class Studen: Person1 {
    var favoriteSubject: String
    
    init(name: String, favoriteSubject: String) {
        self.favoriteSubject = favoriteSubject
        // call super class to initiali
        super.init(name: name)
    }
}

    // references
class Person2 {
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var jack = Person2(name: "Jack", age: 24)
var myFriend = jack

jack.age += 1

print(jack.age)
print(myFriend.age)

struct Person3 {
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var mike = Person3(name: "Mike", age: 24)
var myBFriend = mike

mike.age += 1

print(mike.age)
print(myBFriend.age)

        // memberwise initializaers

    //class or structure
class MessageCell: UITableViewCell {
    
    func update(message: Message) {
        // Update `UITableViewCell` properties with information about the mesagge
        textLabel.text = message.subject
        detailTextLabel.text = message.previewText
    }
    
    override func tableView(_ tableView: UITableViewCell, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = MessageCell(style: .default, reuseIdentifier: "MessagerCell")
        cell.update(message: message)
        
        // run the cell to the view that called this method to request it
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt: IndexPath) {
        // perform any operations you want to make on the cell
    }
}





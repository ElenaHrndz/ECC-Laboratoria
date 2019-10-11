// loops

import UIKit

    // for loops

for index in 1...5{
    print("This is number \(index)")
}

for _ in 1...3 {
    print("Hello")
}
let names = ["Joseph", "Cathy", "Winston"]

for name in names {
    print("Hello \(name)")
}

for letter in "ABCD" {
    print("The letter is \(letter)")
}

for (index, letter) in "ABCD".enumerated() {
    print("\(index): \(letter)")
}

let vehicles = ["uncycle" : 1,"bicycle" : 2, "tricycle" : 3, "quad bike" : 4]
for (vehicleName, wheelCount) in vehicles {
    print("A \(vehicleName) has \(wheelCount)")
}

    // while loops
var numberOfLives = 3

while numberOfLives > 0 {
//    playMove()
//    updateLiveCount()
//    print("I still have \(numberOfLives) lives.")
}

var numberOfLives1 = 3
var stillAlive = true
while stillAlive {
    numberOfLives -= 1
    if numberOfLives1 == 0 {
        stillAlive = false
    }
}

    //control transfer statements
//print -3 through 0
for counter in -3...3 {
    print(counter)
    if counter == 0 {
        break
    }
}

for person in people {
    if person.age < 18 {
        continue
    }
    
    sendEmail(to: person)
}

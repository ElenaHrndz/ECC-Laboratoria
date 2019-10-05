import UIKit

// aritmetic operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let diference = firstScore - secondScore

let product = firstScore * secondScore
let divider = firstScore / secondScore

let reminder = 13 % secondScore

// operator overloading

let meaningOfLife = 42
let dobleMeaning = 42 + 42

let fakers = "Feakers gonna"
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// compound operators

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// comprison operatos

let firstScore1 = 6
let secondScore1 = 4

firstScore1 == secondScore1
firstScore1 != secondScore1

firstScore1 < secondScore1
firstScore1 >= secondScore1

"Taylor" <= "Swift"

// conditions

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}

if firstCard + secondCard == 21 {
    print("Blackjact!")
} else {
    print("Regular cards")
}

// combinig operators

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

// the ternary operator

let firstCard1 = 11
let secondCard1 = 10
print(firstCard1 == secondCard1 ? "Cards are the same" : "Cards are diferent")

if firstCard1 == secondCard1 {
    print("Cards are the same")
} else {
    print("Cards are diferent")
}

//switch statements

let weater = "sunny"

switch weater {
case "rain":
    print("Bring an umberela")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    //fallthrough
default:
    print("Enjoy your day!")
}

//ranger operators

let score1 = 85

switch score1 {
case 0..<50:
    print("You failed badly")
case 50..<85:
    print("You did OK")
default:
    print("You did great!")
}

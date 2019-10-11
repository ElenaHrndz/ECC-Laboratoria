// colections

import UIKit

    // arrays
//var names: [String] = ["Anne", "Gary", "Keith"]

//skip step of speciifying
var names = ["Anne", "Gary", "Keith"]

//var numbers =  [1, -3, 50, 72, -95, 115]

// restrict an array
var numbers: [Int8] = [1, -3, 50, 72, -95, 115]

let numbers1 = [4, 5, 6]
// check if value exist
if numbers1.contains(5) {
    print("There is a 5")
}

    // array types
// traditional annotation
var myArray: [Int] = []

// using special collection type annotation
var myArrayExample: Array<Int> = []

// initialize with ()
var myArrayEmpty = [Int]()

    // working with arrays
var myArrayCount = [Int](repeating: 0, count: 100)

let count = myArrayCount.count
if myArrayCount.isEmpty { }

// subscript syntax [] refer to a specific elemet
let firstName = names[0]
names[1] = "Paul"

//add values at end
var names2 = ["Amy"]
names2.append("Joe")
names2 += ["Keith", "Jane"]
print(names2)

// specify the value and the index
names2.insert("Bob", at: 0)

// remove
var dogs = ["Amy", "Brad", "Chelsea", "Dan"]
// specidied item
let chelsea = dogs.remove(at: 2)
//last
let dan = dogs.removeLast()
// all
dogs.removeAll()

var myNewArray = names2 + names

// array of arrys
let array1 = [1, 2, 3]
let array2 = [4, 5, 6]
let containerArray = [array1, array2]
let firstArray = containerArray[0]
let firstElemment = containerArray[0][0]

    // dictionaries
//[key1: value1, key2: value2, key3: value3]

//[String: Int]
var scores = ["Richard": 500, "Luke": 400, "Cherly": 800]

// empty

var myDictionary = [String: Int] ()
var myDictionaryEmpty = Dictionary<String, Int>()
var myEmptyDictionary: [String: Int] = [:]

    // add/remove/modify a dictionary

//modify
scores["Oli"] = 399
let oldValue = scores.updateValue(100, forKey: "Richard")

if let oldValue = scores.updateValue(100, forKey: "Richard") {
    print("Richard's old value was \(oldValue)")
}

// remove
scores["Richard"] = nil

if let oldValue = scores.removeValue(forKey: "Luke") {
    print("Luke's score was \(oldValue) before he stopped playing")
}

    //accessing a dictionary
let players = Array(scores.keys)
let points = Array(scores.values)

if let mySocre = scores["Oli"] {
    print(mySocre)
}

if let henryScore = scores["Henry"] {
    print(henryScore)// not a key dictionary
}

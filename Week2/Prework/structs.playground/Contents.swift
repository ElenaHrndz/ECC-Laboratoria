import UIKit

// structs

// creating your own structs

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"

// computed properties

struct Sport1 {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olimpic sport"
        } else {
            return "\(name) is not an Olimpic sport"
        }
    }
}

let chessBoxing = Sport1(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

// property observers

//struct Progress {
//    var task: String
//    var amount: Int
//}

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) in now \(amount)% complete")
        }
    }
    
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

// methods

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

// mutating methods

struct Person {
    var name:String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

// properties and methods of strings

let string = "Do or do not, there is no try"
print(string.count)

print(string.hasPrefix("Do"))
print(string.uppercased)
print(string.sorted())

// properties and methods of arrays

var toys = ["Woody"]
print(toys.count)

    // add item
toys.append("Buzz")
    //locate
toys.firstIndex(of: "Buzz")

print(toys.sorted())
    //remove
toys.remove(at: 0)

// initializers

struct User {
    var userName: String
}

var user = User(userName: "twostraws")

struct User1 {
    var userName: String
    
    init() {
        userName = "Anonymous"
        print("Creating a new user!")
    }
}

var user1 = User1()
user1.userName = "twostraws"

// referring to the current instance

    //self
struct Person1 {
    var name: String
    
    init(name: String) {
        print("\(name) was born")
        self.name = name
    }
}

// lazy properties

struct FamilyTree {
    init() {
        print("Creating family tree")
    }
}

struct Perdon2{
    var name: String
//    var familyTree = FamilyTree()
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Perdon2(name:"Ed")
ed.familyTree

// static properties and methods

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let paul = Student(name: "Paul")
let taylor = Student(name: "Taylor")
print(Student.classSize)

// access control

struct Pet {
//    var id: String
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let dog = Pet(id: "12345")


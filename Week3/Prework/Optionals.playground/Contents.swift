// optionals

import UIKit

    // nil
struct Book {
    var name: String
    var publicationYear: Int?
    
}

let firstHarryPotter = Book(name: "Harry Potter and the Sorcerer's Stone", publicationYear: 1997)
let secondHarryPotter = Book(name: "Harry Potter  and the Chamber of Secrets", publicationYear: 1998)
let thirdHarryPotter = Book(name: "Harry Potter and the Prisioner of Azkaban", publicationYear: 1999)

let books = [firstHarryPotter, secondHarryPotter, thirdHarryPotter]

//let unannouncedBook = Book(name: "Rebels and Lions", publicationYear: 0)
//let unannouncedBook = Book(name: "Rebels and Lions", publicationYear: 2019)

let unannouncedBook = Book(name: "Rebels and Lions", publicationYear: nil)

    //specifying the type of an optional
/*var serverResponseCode = 404

var serverResponseC = nil // Error, no type specified when not `nil`
*/

var serverResponseCode: Int? = 404

var serverResponseC: Int? = nil

    //working with optional values
/*if publicationYear != nil {
    let actualYear = publicationYear!
    print(actualYear)
}*/

/*let unwrappedYear = publicationYear!
print(unwrappedYear)*/

if let unwrappedPublicationYear = firstHarryPotter.publicationYear {
    print("The book was published in \(unwrappedPublicationYear)")
}
else {
    print("The book does not have an official publication date.")
}

    // functions and optionals
let string = "123"
let possibleNumber = Int(string)
let string1 = "Cinthia"

// accept optionals arguments
//func printFullNsme(firstName: String, middleName: String?, lastName: String)

// return optional type
//func textFromURL(url: URL) -> String?

    // failable initializers
struct Toddler {
    var name: String
    var monthsOld: Int
    
    init?(name: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        } else {
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}

let possibleToddler = Toddler(name: "Joana", monthsOld: 14)
if let toddler = possibleToddler {
    print("\(toddler.name) is \(toddler.monthsOld) months old")
} else {
    print("The age you specified for the toodler is not between 1 and 3 yrs of age")
}


    //optional chaining
struct Person {
    var age: Int
    var residence: Residence?
}

struct Residence {
    var address: Address?
}

struct Address {
    var buildingNumber: String
    var streetName: String
    var apartmentNumber: String?
}

var person = Person(age: 23, residence: Residence(address: Address(buildingNumber: "200", streetName: "100", apartmentNumber: "300")))

if let theResidence = person.residence {
    if let theAddress = theResidence.address {
        if let theApartmentNumber = theAddress.apartmentNumber {
            print("He/she lives in partment number \(theApartmentNumber).")
        }
    }
}

if let theApartmentNumber = person.residence?.address?.apartmentNumber {
    print("he/she lives in apartment number \(theApartmentNumber).")
}


    // implicitly unwrapped optionals

class ViewController: UIViewController {
    @IBOutlet var label: UILable!
}

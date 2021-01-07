import UIKit

var age: Int? = nil
age = 38

var name: String? = nil
print(name?.count) // nil

if let unwrapped = name {
    print("\(unwrapped) count letters")
} else {
    print("Missing name")
}

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("you didn't provide a name!")
        return
    }
    
    print("Hello \(unwrapped)")
}

let str = "5"
let num = Int(str)! // force unwrapping

let age2: Int! = nil // implicitly unwrapped

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous" // nil coalescing

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased() // optional chaining

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password \(error)")
}

if let result = try? checkPassword("password") {
    print("Result is \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("mf40c")
print("OK")

struct Person {
    var id: String
    
    init?(id: String) { // failable initializer
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

let customPerson = Person(id: "123456789")
customPerson

class Animal {}
class Fish: Animal {}

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

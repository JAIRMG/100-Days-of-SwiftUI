import UIKit

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

var user = User(id: "12345")
displayID(thing: user)

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

struct Xavi: Payable, NeedsTraining, HasVacation {
    func calculateWages() -> Int { 0 }
    
    func study() {}
    
    func takeVacation(days: Int) {}
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

struct Sara: Employee {
    func calculateWages() -> Int { 0 }
    
    func study() { }
    
    func takeVacation(days: Int) {}
    
}

extension Int {
    func squared() -> Self {
        self * self
    }
}

let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        self % 2 == 0
    }
}

number.isEven

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "Ringo", "George"])

extension Collection {
    func summarize() {
        print("There are \(count) of us")
        
        for name in self {
            print(name)
        }
        
    }
}
pythons.summarize()
beatles.summarize()

protocol Identifiable2 {
    var id: String { get set }
    func identify()
}

extension Identifiable2 {
    func identify() {
        print("My ID is \(id)")
    }
}

struct User2: Identifiable2 {
    var id: String
}

let millie = User2(id: "12345")
millie.id
millie.identify()

import UIKit

func printHelp() {
    let message = """
    Welcome to my app
    day 5 of 100 days of
    swiftui
    """
    print(message)
}

printHelp()

print("Hello, world")

func square(number: Int) {
    print(number * number)
}
square(number: 8)

func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 8)
print(result)

func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "taylor")

func greet(_ person: String) {
    print("Hello, \(person)")
}

greet("Taylor")

func greet(person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    } else {
        print("oh, no its \(person) again")
    }
}

greet(person: "Taylor")
greet(person: "Taylor", nicely: false)
print("jeje", terminator: "-")
print(" no new line between 👆")

print("Haters", "gonna", "hate")

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 2, 4, 6, 8)

enum PasswordError: Error {
    case obvious
}

func checkPassword(password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

try? checkPassword(password: "password")

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

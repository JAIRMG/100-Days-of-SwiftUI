import UIKit

let driving = {
    print("I am driving in my car")
}

driving()

let driving2 = { (place: String) in
    print("I am going to \(place) in my car")
}

driving2("CDMX")

let drivingWithReturn = { (place: String) -> String in
    return "I am going to \(place) in my car"
}

let message = drivingWithReturn("Tokyo")
print(message)

let driving3 = {
    print("I am driving in my car")
}

func travel(action: () -> Void) {
    print("I am ready to go!")
    action()
    print("I arrived")
}

travel(action: driving3)

func travel2(action: () -> Void) {
    print("I'm ready to go")
    action()
    print("I arrived")
    
}

travel2 {
    print("I'm driving")
}

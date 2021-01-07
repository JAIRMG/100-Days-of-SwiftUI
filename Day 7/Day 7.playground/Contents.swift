import UIKit

func travel(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I arrived")
}

travel { (place: String) in
    print("I am going to \(place)")
}

func travel2(action: (String) -> String) {
    print("We are about to go")
    let description = action("CDMX")
    print(description)
    print("We arrived")
}

travel2 { (place: String) -> String in
    return "We are driving to \(place) in our car"
}

func travel3(action: (String) -> String) {
    print("she's about to go")
    let description = action("Japan")
    print(description)
    print("she arrived!")
}

travel3 {
    "She is flying to \($0) with his pet"
}

func travel4(action: (String, Int) -> String) {
    print("he's about to go")
    let description = action("New York", 120)
    print(description)
    print("he arrived")
}

travel4 {
    return "He's traveling to \($0) at \($1) km/h"
}


func travel5() -> (String) -> Void {
    return {
        print("I am going to \($0)")
    }
}

let result = travel5()
result("London")
let result2 = travel5()("Sao Paulo")

func travel6() -> (String) -> Void {
    var counter = 1
    return { (place: String) in
        print("Counter: \(counter), I am going to \(place)")
        counter += 1
    }
}

let result3 = travel6()
result3("Montevideo")
result3("Playa pocitos")
result3("Buenos aires")

let result4 = travel6()
result4("Bogota")
result4("Cali")
result4("Medellin")

import UIKit

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

let colors = Set(["blue", "red", "green"])
let colors2 = Set(["blue", "red", "green", "red", "blue"])

var name = (first: "Taylor", last: "Swift")
name.0
name.last
name.0 = "John"

let address = (house: 84, street: "taylor swift avenue", city: "CDMX")
let set = Set(["algo", "antier", "azalea"])
let pythons = ["John", "Juan", "Jose", "Graham"]

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swiftt"]

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sandy": "Vainilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Mark", default: "Unknown"]

var teams = [String: String]()
var teams2: [String: String] = [:]

teams["Paul"] = "Red"

var results = [Int]()
var results2: [Int] = []

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results3 = Array<Int>()

let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "development")

enum Planet: Int {
    case mercury = 1
    case earth
    case venus
    case mars
}

let earth = Planet(rawValue: 2)

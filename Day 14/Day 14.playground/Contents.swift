import UIKit

func favoriteAlbum(name: String) {
    print("My favorite is \(name)")
}

favoriteAlbum(name: "Fearless")

func albumRelease(name: String, year: Int) {
    print("\(name) was released in year \(year)")
}

albumRelease(name: "Fearless", year: 2008)

func countLetters(in str: String) {
    print("The string \(str) has \(str.count) letters")
}

countLetters(in: "fantastic")

func albumIsTaylors(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    return false
}

if albumIsTaylors(name: "Taylor Swift") {
    print("That's one of hers")
} else {
    print("Who made that?")
}

if albumIsTaylors(name: "The white album") {
    print("That's one of hers")
} else {
    print("Who made that?")
}

func getHaterStatus(weather: String) -> String? {
    if weather == "Sunny" {
        return nil
    } else {
        return "hater"
    }
}

var status = getHaterStatus(weather: "rainy")

if let unwrappedStatus = status {
    // unwrapped status
} else {
    // in case you want you block
}

func takerHateAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

if let haterStatus = getHaterStatus(weather: "rainy") {
    takerHateAction(status: haterStatus)
}

func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    return nil
}

var items = ["James", "John", "Sally"]

func position(of string: String, in array: [String]) -> Int {
    for i in 0..<array.count {
        if array[i] == string {
            return i
        }
    }
    
    return 0
}

let jamesPosition = position(of: "James", in: items)
let johnPosition = position(of: "John", in: items)
let sallyPosition = position(of: "Sally", in: items)
let xaviPosition = position(of: "Xavi", in: items)

var paul: String = "Paul"
var name2: String? = "Bob"
var name3: String! = "Sophie"

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006:
        return "Taylor Swift"
    case 2008:
        return "Fearless"
    default:
        return nil
    }
}

let album = albumReleased(year: 2006)?.uppercased()
print("The album is \(album)")

let str = "Hello world"
print(str.uppercased())

enum WeaterType {
    case sun, cloud, rain, wind, snow
}

func getHaterStatus2(weather: WeaterType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .cloud, .wind:
        return "dislike"
    case .rain:
        return "hate"
    default:
        return nil
    }
}

getHaterStatus2(weather: .cloud)

enum WeaterType2 {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus3(weather: WeaterType2) -> String? {
    switch weather {
    case .sun:
        return nil
    case let .wind(speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    default:
        return nil
    }
}

getHaterStatus3(weather: .wind(speed: 9))

struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

print(taylor.clothes)
print(other.shoes)

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)


class Person2 {
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}

class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("la la la la")
    }
}

class CountrySinger: Singer {
    override func sing() {
        print("Trucks, guitars and liquor")
    }
}

var taylor2 = CountrySinger(name: "Taylor", age: 25)
print(taylor2.age)
print(taylor2.name)
taylor2.sing()

@objcMembers class HeavyMetalSinger: Singer {
    var noiseLevel: String
    
    init(name: String, age: Int, noiseLevel: String) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("GRRHH, grrrasdf, fasdfasdf")
    }
}

var phil = HeavyMetalSinger(name: "Phil anselmo", age: 20, noiseLevel: "loooud")

phil.sing()

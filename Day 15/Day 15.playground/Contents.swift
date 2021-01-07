import UIKit

struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

taylor.describe()
other.describe()

struct Person2 {
    var clothes: String {
        willSet {
            updateUI(msg: "I am changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI(msg: "I changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var john = Person2(clothes: "T-shirts")
john.clothes = "jeans"

struct Person3 {
    var age: Int
    
    var ageInDog: Int {
        get {
            return age * 7
        }
    }
    
    var ageWithoutGet: Int {
        return age * 7
    }
}

var fan = Person3(age: 26)
fan.ageInDog
fan.ageWithoutGet

struct TaylorFan {
    static let favoriteSong = "Look what you made me do"
    
    var name: String
    var age: Int
}

let fan2 = TaylorFan(name: "James", age: 18)
print(TaylorFan.favoriteSong)

class TaylorFan2 {
    private var name: String?
    fileprivate var lastName: String?
}

class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studioName: String
    
    init(name: String, studioName: String) {
        self.studioName = studioName
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studioName: "The Castles Studio")
var fearless = StudioAlbum(name: "Fearless", studioName: "Aimeeland Studio")
var itunesLive = LiveAlbum(name: "iTunes Live from Soho", location: "New York")
var albums: [Album] = [taylorSwift, fearless]

// Polymorphism: an object can work as its class and its parent classes, all at the same time.

for album in albums as! [StudioAlbum] {
    print(album.getPerformance())
    
    print(album.studioName)
}

for album in albums as? [LiveAlbum] ?? [LiveAlbum]() {
    // not going to enter since we will be looping into [LiveAlbum]()
    print("gg")
    print(album.getPerformance())
    print(album.location)
}

let number = 5
let text = String(number)

let vw = UIView()

UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0.0
})

// syntactic sugar
UIView.animate(withDuration: 0.5) {
    vw.alpha = 1.0
}

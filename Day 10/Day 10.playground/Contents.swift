import UIKit

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppyy", breed: "Poodle")

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

let poodle = Poodle(name: "My dog")

class Test: Dog {}

let withoutExplicitInit = Test(name: "", breed: "")

class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}

class SanBernardo: Dog2 {
    override func makeNoise() {
        print("Yip!")
    }
}

let sb = SanBernardo()
sb.makeNoise()

final class Dog3 {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeNoise() {
        print("Woof")
    }
}

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var copySinger = singer
copySinger.name = "Justin Bieber"

print(singer.name)

class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func greeting() {
        print("hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more")
    }
}

for _ in 1 ... 3 {
    let person = Person()
    person.greeting()
}

class AnotherSinger {
    var name = "Taylor Swift"
}

let taylor = AnotherSinger()
print(taylor.name)
taylor.name = "Ed Sheeran"
print(taylor.name)

struct AnotherAnotherSinger {
    var name = "Drake"
}

var drake = AnotherAnotherSinger() // if is a struct both struct and properties should be variables
print(drake.name)
drake.name = "The weeknd"
print(drake.name)

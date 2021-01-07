import UIKit

var name = "Tim McGraw"
name = "Romeo"

var age: Int
age = 25

var latitude: Double
latitude = 36.166667

var longitude: Double
longitude = -12345678901286.783333

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat = false

var longitude2 = -86.7333 // Double type inference

var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 1
b -= 1
b *= b

var c = 1.1
var d = 2.2
var e = c + d

var ed = "ed"
var edd = "edd"
var eddy = "eddy"
var three = ed + ", " + edd + " and " + eddy

e > 2
e < 4

(1.1 + 2.2) == 3.3 // false 😟

!stayOutTooLate
"Your name is \(name), \(age), \(latitude)"
"Your age is \(age) and you born in \(2020 - age)"

var evenNumbers = [2, 4, 6, 8]
var songs: [Any] = ["Shake it off", "Smooth operator", "idle", 3]

songs[0]
songs[1]
songs[2]

type(of: songs)

var songs2: [String] = []
songs2.append("I miss you")

var songs3 = [String]()

var songs4 = ["Shake it off", "Smooth operator", "idle"]
var songs5 = ["yesterday"]

var allSongs = songs4 + songs5
allSongs += ["veneno"]

var person = [
                "first": "taylor",
                "middle": "Swift",
                "last": "Swift",
                "month": "december",
                "website": "taylorswift.com"
            ]

person["middle"]
person["website"]
print(person.sorted { $0.value < $1.value })

var action: String
var person2 = "hater"

if person2 == "hater" {
    action = "hate"
} else if person2 == "player" {
    action = "play"
} else {
    action = "cruise"
}

var stayOutTooLate2 = true
var nothingInBrain2 = true

if stayOutTooLate2 && nothingInBrain2 {
    action = "cruise"
}

if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}

for number in 1 ... 10 {
    print("number \(number) * 10 = \(number * 10)")
}

var str = "fakers gonna"

for _ in 1 ... 5 {
    str += " fake"
}

print(str)

var songs6 = ["Shake it off", "You belong with me", "Look what you made me do"]

for song in songs {
    print("My favorit song is \(song)")
}

var people = ["player", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0..<people.count {
    print("\(people[i]) gonna \(actions[i])")
}

for i in 0..<people.count {
    var str = "\(people[i]) gonna"
    
    for _ in 0..<5 {
        str += " \(actions[i])"
    }
    
    print(str)
}

var counter = 0

while true {
    
    print("counter is now \(counter)")
    
    counter += 1
    
    if counter == 556 {
        break
    }
}

var songs7 = ["Shake it off", "You belong with me", "Look what you made me do"]

for song in songs7 {
    if song == "You belong with me" {
        continue
    }
    
    print("My favorite song is \(song)")
}

let liveAlbums = 2

switch liveAlbums {
case 0...1:
    print("You're just starting out")
case 2...3:
    print("You're a rising star'")
case 4...5:
    print("You are world famous!")
default:
    print("Have you done something new?")
}

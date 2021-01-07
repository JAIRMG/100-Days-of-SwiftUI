import UIKit

let count = 1 ... 10

for number in count {
    print("number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on apple music")
}

print("players gonna ")

for _ in 1 ... 5 {
    print("play")
}

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Here I come")

var number2 = 1

repeat {
    print(number2)
    number2 += 1
} while number2 <= 20

print("Here I come")

while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false

var countdown = 10

while countdown >= 0 {
    print("Countdown \(countdown)")
    
    
    if countdown == 4 {
        print("I´m bored, let's go")
        break
    }
    countdown -= 1
}

print("Blast off!!")

outerloop: for i in 1 ... 10 {
    for j in 1 ... 10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("is a bullseye!")
            break outerloop
        }
        
    }
}

for i in 1 ... 10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

var counter = 0

while true {
    print(" ")
    counter += 1
    if counter == 273 {
        break
    }
}

import UIKit

let firstScore = 12
let secondScore = 30
let total = firstScore + secondScore
let difference = secondScore - firstScore
let product = firstScore * secondScore
let divided = secondScore / firstScore
let remainder = 30 % 12

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["George", "Paul"]
let secondHalf = ["Ringo", "John"]
let beatles = firstHalf + secondHalf

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

let thirdScore = 6
let fourthScore = 4

thirdScore == fourthScore
thirdScore != fourthScore

thirdScore > fourthScore
thirdScore <= fourthScore

"Taylor" >= "Swift"
"KAIR" > "JAIR"

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces A Lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("both ages are over 18")
}

if age1 > 18 || age2 > 18 {
    print("one of them is over 18")
}

let thirdCard = 10
let fourthCard = 11

print(thirdCard == fourthCard ? "Cards are the same" : "Cards are different")

if thirdCard == fourthCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

let weather = "sunny"

switch weather {
case "rainy":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day")
}

let myScore = 85

switch myScore {
case 0 ..< 50:
    print("You failed badly")
case 50 ..< 85:
    print("you did OK")
default:
    print("You did great!")
}

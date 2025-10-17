import UIKit

var greeting = "Hello, playground"

// variables var
// constants let

let day = "Monday"  //String
let dailyTemp = 75 //int
print("Today is \(day). And the temperature is \(dailyTemp)") //print with interpolation string
var temp = 70

print("Hot Hot Hot = \(temp)") //70
temp = 50
print("What is the temperature? \(temp)")

let weeklyTemp = 86
temp = weeklyTemp
print("The temp in the noon is \(temp)")

print("----- The game score example -----")
let levelScore = 10
var gameScore = 0
print(gameScore)
print(levelScore)
print("The level score is \(levelScore)") //string interpolation

gameScore = 5
print(gameScore)

gameScore += levelScore // += is a shortcut for adding 2 var
print(gameScore)

var levelBonusScore = 20.0
print("the bonus score \(levelBonusScore)")

let levelLowestScore = 50
let levelHighestScore = 100
let levels = 10

print("The lowest score is \(levelLowestScore)")
print("The highest score is \(levelHighestScore)")
print("There are \(levels) levels")

let levelScoreDifference = levelHighestScore - levelLowestScore
print("The difference between the highest and lowest score is \(levelScoreDifference)")

// Swift dataTypes
let dishName: String = "Pizza"
let price: Double = 12.99
let inStock: Bool = false
let quantity: Int = 1





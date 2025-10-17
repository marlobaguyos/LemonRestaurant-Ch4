import UIKit

//IF - ELSE IF - ELSE

/*
 ----SYNTAX----
 if condition1 {
    this condition of code runs if condition1 is true
 }else if condition2{
    this block runs if conditiona1 is false and condition 2 is true}else{
    this block runs if none of the above conditions are true
 }
 */
// ----Example 1----

var waterTemp:Int = 30
if waterTemp >= 100{
    print("The water is boiling")
}else{print("The water is not boiling")
}

// ----Example 2----

var position = 8

if position == 1{
    print("You come first")
}else if position == 2{
    print("You came second")
}else if position == 3{
    print("You came third")
}else {
    print("You finished in position \(position)")
}

// ----Example 3---- And &&

var temp = 74

if temp >= 68 && temp <= 75 {
    print("The temperature is just right")
}else {
    print("The temperature i too hot or cold")
}

// ----Example 4---- OR ||
var mainPower:Bool = false
var batterPower:Bool = true

if mainPower == true || batterPower == true{
    print("I can use the laptop")
}else {
    print("Charge your laptop")
}

// ----Challenge----

var isVip:Bool = false
if isVip == true{
    print("Vip")
}else{
    print("Go Away")
}

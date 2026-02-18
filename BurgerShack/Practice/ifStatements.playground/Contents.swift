import UIKit

// if - else if - else

/*
 -------- SYNTAX --------
 if condition1 {
    this block runs if condition1 is true
 } else if condition2 {
 this block runs if condition1 is false and condition2 is true
 } else {
 this block runs if none of the above conditions are true
 }
 */

// --------- Example 1 Interger -----------
var guests:Int = 27
let capacity:Int = 20

if guests > capacity {
    print ("Over capacity")
} else {
    print("We can seat this party.")
}


// ---------- Example 2 Double ----------------
let rating:Double = 4.2

if rating >= 4.5{
    print("Excellent")
} else if rating >= 3.5{
    print ("Good")
}

else{
    print("Needs improvement")
}

// ---------- Example 3 Bool Operators ----------------
let isOpen:Bool = false
let hasOutdoorSeating:Bool = true

if isOpen && hasOutdoorSeating {
    
} else if isOpen && !hasOutdoorSeating {
    print("Open indoor only")
} else {
    print("Closed")
}


// ---------- Example 4 Comparing String ----------------
let userName:String = "Pam"

if userName == "Pam" {
    print ("Welcome, Pam")
} else {
    ("You are not Pam")
}


// ---------- Example 5 Ternary ----------------
// condition ? expressionIfTrue : expressionIfFalse
let price:Double = 12.0

let label = price > 10 ? "Premium" : "Regular"
print(label)

// ---------- Example 6  ----------------
let children = 2
let groupSize = 5

if groupSize >= 8 {
    print("Large group - call manager")
} else if children > 0 {
    print("Offer kids menu")
} else {
    ("Standard seating")
}


// ---------- Mini Challange # 1  ----------------
// Show one message if user is vip and other if not
var isVip:Bool = true


if isVip == true {
    print("You are VIP")
} else {
    print("Not VIP")
}

isVip == true ? print("You are VIP") : print("You are not VIP")



    

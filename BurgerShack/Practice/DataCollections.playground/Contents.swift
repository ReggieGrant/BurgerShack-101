import UIKit

//Arrays
let dishes = ["Pizza", "Pasta", "Gnocchi"]

print(dishes[0]) // access to the data
print(dishes[1])

// creating a mutable array
var orders = [String]()
orders.append("Soup")
orders.append("Burger")
print(orders)

// DICTIONARIES

let menuPrices = [
    //key:value
    "Pizza":12.99,
    "Salad":13.00,
    "Pasta":9.00
]

print(menuPrices["Salad"]!)

// challange 1 - create a dictionary for drinks

let drinkPrices = [
    //key:value
    "Beer":6.00,
    "Soda":3.50,
    "Wine":20.00
]
drinkPrices.forEach { drink, price in
    print("\(drink): $\(price)")
}
print(drinkPrices["Wine"]!)

// foreach

let fruits = [
    "Apple":1.50,
    "Banana":0.50,
    "Mango":2.30,
    "Pineapple":5.00
]

fruits.forEach{ fruit,price in
    if price < 2 {
        print("\(fruit): $\(price)")
    }
}
// add an if to print only the fruits with the price < 2

// challenge 2 - print all the drinks using a forEach



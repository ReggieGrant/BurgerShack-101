import UIKit

/*
 SYNTAX
 
 let newArray = originalArray.map {
 // return modified element
 }
 
 .map()
 Method used to transform each element of a collection into a new value, creating a new array with results.
 
 .map is non-mutating, meaning
 The original array stays exactly as it was
 */

let prices = [8.50, 12.00, 14.25]

//let pricesWithTax = prices.map{ price in
//    return price * 1.16
//}
let pricesWithTax = prices.map { price in
    return price * 1.16
}

let formattedPrices = pricesWithTax.map {String(format:"%.2f", $0)}
print(formattedPrices)


// String(format: "%.2f", value)

// example 1
let desserts = ["Cake","Ice Cream","Pie"]
let emojiMenu = desserts.map{ "🍰 \($0)"}
print(emojiMenu)

// example 2
let emojiMenu2 = desserts.map{ dessert in
    return "🍰 \(dessert)"
}
print(emojiMenu2)

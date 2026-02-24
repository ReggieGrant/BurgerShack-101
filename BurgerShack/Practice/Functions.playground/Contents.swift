import UIKit

// functions

/*
 Syntax
 
 func functionName(parameter1: Type, parameter2: Type) -> ReturnType{
    
      //logic goes here
 
     return value
 }
 
 */

// Example #1 - with 1 parameter

func greet(person: String) -> String {
    let greetings = "Hello" + person + "!"
    return greetings
}

let message = greet(person: "Reggie")
print(message)


// Example #2 - with 2 parameters
func add(number1: Int, number2: Int) -> Int{
    return number1 + number2
}

let result = add(number1: 255, number2: 664)
print ("The addition between 255 + 664 = \(result)")

// Example #3 with unnamed parameters
func mulitiply(_ x: Int,_ y:Int) -> Int{
    return x + y
}

print(mulitiply(3,5))

// Example #4

func deliveryTime(mins: Int) -> String{
    return "Ready in \(mins) minutes"
}

let calculation = deliveryTime(mins: 26)
print(calculation)

/* MiniChallenge
 1.  Define a function called welcomeStudent.
 2.  The function should take one parameter: name of type String.
 3.  The function should return a String.
 4.  Inside the function, build a message like: "Welcome, [name]! Ready to learn Swift?".
 5.  Call the function with a sample name and print the result.
*/

func welcomeStudent(name: String) -> String{
    return "Welcome, \(name)! Ready to learn Swift?"
}


print(welcomeStudent(name:"Reggie"))

// mini-challange: Create a function to calculate price + tax and show result

func calculateTaxes(price: Double) -> Double{
    // declare a constant for the taxes (let)
    let taxes = 1.08
    var total = price * taxes
    // calculate the taxes (var)
    
    return total
}

print(calculateTaxes(price:23.5))





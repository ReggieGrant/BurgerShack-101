import UIKit

/*
 Class is used to define a custom type (blueprints)
 with the class we create objects (customers, dogs, books, students)
 it has properties and methods
 
 -- Syntax --
 
 class ClassName {
 var property1: DataType
 var property2: DataType
 
 init(property1:DataType, property2:DataType){
 self.propertyName1 = propertyName1
 self.propertyName2 = propertyName2
 
   }
   func functionName() -> ReturnType {
        return
 }
 }
 */

class Dog{
    var name: String
    var age: Int
    
    init(name:String,age:Int){
        self.name = name
        self.age = age
    }
    func bark(){
        print("\(name) says woof!!!")
    }
}

let dog1 = Dog(name:"Doggy",age:1)
let dog2 = Dog(name:"Moka",age:2)

dog1.bark();
dog2.bark();


// ===== Example 2 ======

class Customer{
    var name: String
    var email: String
    var phoneNumber: String
    var visits: Int
    
    // Initializer
    init(name: String, email: String,phoneNumber: String, visits: Int){
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber
        self.visits = visits
    }
    
    func greetings() -> String{
        return "Welcome Back! \(name)"
    }
    func contactCard()->String{
        return """
            Name: \(name)
            Email: \(email)
            Visits: \(visits)
            PhoneNumber: \(phoneNumber)
        """
    }
}

let customer1 = Customer(
    name: "Reggie",
    email: "reggie@gmail.com",
    phoneNumber:"619-483-7137",
    visits:2
)

print(customer1.contactCard)
print(customer1.greetings())

let customer2 = Customer(
    name:"John",
    email:"john@email.com",
    phoneNumber:"555-555-555",
    visits:5
    
)
print("---- customer 2 ----")
print(customer2.contactCard())
// mini-challenge
// 1. add phoneNumber property
// 2. Create a method contactCard() and return full info

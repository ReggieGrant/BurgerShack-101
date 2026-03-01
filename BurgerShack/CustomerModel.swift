//
//  CustomerModel.swift
//  BurgerShack
//
//  Created by Reginald Grant on 3/1/26.
//

import Foundation

class Customer: Identifiable{
    let id = UUID()
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
    
    func summary() -> String{
        return "\(name) - Visits: \(visits)"
    }
    
}

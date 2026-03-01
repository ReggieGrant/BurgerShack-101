//
//  CustomerListView.swift
//  BurgerShack
//
//  Created by Reginald Grant on 3/1/26.
//

import SwiftUI

struct CustomerListView: View { 
    @State private var customers:[Customer] = [
        Customer(
            name: "Reggie",
            email: "reggie@gmail.com",
            phoneNumber:"619-483-7137",
            visits:2),
            
        Customer(
            name: "Quinn",
            email: "quinn@gmail.com",
            phoneNumber:"619-444-5555",
            visits:10),
        
        Customer(
            name: "Elijah",
            email: "elijah@gmail.com",
            phoneNumber:"555-555-7555",
            visits:6)
    ]
    
    var body: some View {
        
        VStack{
            Image("BurgerShack")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
            Text("Burger Shack")
                .font(.title)
                .fontWeight(.bold)
            Text("Welcome to our Burger Shack App")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        
        List(customers){ c in
            HStack{
                VStack(alignment:.leading){
                    Text(c.name)
                        .font(.headline)
                    Text(c.email)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("\(c.visits)")
                    .font(.caption)
                    .padding(8)
                    .background(Color.blue.opacity(0.2))
                    .clipShape(Circle())
            }
        }
        .navigationTitle("Customers")
    }
}

#Preview {
    CustomerListView()
}

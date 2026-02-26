//
//  MenuView.swift
//  BurgerShack
//
//  Created by Reginald Grant on 2/23/26.
//


/*
 Computed Properties
 - Does not store a value
 - Each access recomputes the value
 
 SYNTAX
 var propertyName: Type {
    return a calculated value
 }
 */

import SwiftUI

struct MenuView: View {
    // dictonary are special variables
    
    @State private var showMessage = false
    @State private var showAffordableOnly = false
    @State private var showDesserts = false
    
    let menuItems:[String:Double] = [
        "Burger":15.99,
        "Fries":3.00,
        "Shakes":9.50,
        "Chicken Sandwich":16.99,
        "Veggie Burger":17.99,
        "Chicken Tenders":12.00,
        "Onion Rings":4.50,
        "Sweet Potato Fries":4.00
    ]
    
    func getTotalItems() -> Int{
        displayMenu.count
    }
    
    var sortedMenu:[(name:String, price:Double)]{
        menuItems
            .sorted {$0.key < $1.key}
            .map {(name: $0.key, price: $0.value)}
    }
    
    var displayMenu:[(name:String, price:Double)]{
            if showAffordableOnly {
                return sortedMenu.filter { $0.price < 6 }
            }else{
                return sortedMenu
            }
        }
    /*
     [
     (name: "Burger", price: 15.99),
     (name: "fries",  price: 3.00 )
     ]
     */
    
    var body: some View {
        // convert dictionary into a sorted element
        let sortedMenu = menuItems.sorted {
            $0.key < $1.key
        }
        
//        func getHighestPrice () -> Double {
//            var highest = 0.0
//            for item in sortedMenu{
//                if item.price > highest {
//                    highest = item.price
//                    
//                }
//            }
//            return highest
//        }
        
        VStack{
            VStack{
                // header
                Image("BurgerShack")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding()
                
                Text("Today's Menu")
                    .font(.title2)
                    .bold()
                    
                
            }
            
        VStack{
                Toggle("Show message",isOn: $showMessage)
                Toggle("Show affordable menu",isOn: $showAffordableOnly)
                        }
                        if showMessage {
                            Text("Welcome to Burger Shack")
                        }
            //            List{
//                ForEach(sortedMenu1, id:\.key){
//                    name,price in
//                    
//                    HStack{
//                        Text(name)
//                        Text("\(price,specifier: "%.2f")")
//                    }
//                    
//                    
//                }
//            }
            
            
            
            Button("View Desserts"){
                showDesserts = true
            }
            .foregroundColor(.black)
            .sheet(isPresented:$showDesserts){
                DessertView()
            }
            .padding()
            .background(Color.green.opacity(0.2))
            .cornerRadius(10)
            
            Section{
                List {
                    ForEach(displayMenu, id: \.name) { item in
//                        HStack {
//                            Text(item.name)
//                            Spacer()
//                            Text(String(format: "%.2f", item.price))
//                        }
                        MenuItemRowView(name: item.name,price:item.price )
                    }
                }
            }
            
            Section{
                VStack{
                    Text("Total items:\(getTotalItems())")
                }
            }
        }
        
    }
}

#Preview {
    MenuView()
}

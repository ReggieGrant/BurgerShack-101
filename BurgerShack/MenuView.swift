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
        menuItems.count
    }
    
    var sortedMenu:[(name:String, price:Double)]{
        menuItems
            .sorted {$0.key < $1.key}
            .map {(name: $0.key, price: $0.value)}
    }
    
    /*
     [
     (name: "Burger", price: 15.99),
     (name: "fries",  price: 3.00 )
     ]
     */
    
    var body: some View {
        // convert dictionary into a sorted element
        let sortedMenu1 = menuItems.sorted {
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
                
                Text("Today's Menu.")
                    .font(.title2)
                    .bold()
                    
                
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
            
            Section{
                List {
                    ForEach(sortedMenu, id: \.name) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text(String(format: "%.2f", item.price))
                        }
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

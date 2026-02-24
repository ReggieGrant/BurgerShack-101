//
//  MenuView.swift
//  BurgerShack
//
//  Created by Reginald Grant on 2/23/26.
//

import SwiftUI

struct MenuView: View {
    // dictonary are special variables
    let menuItems = [
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
    
    var body: some View {
        // convert dictionary into a sorted element
        let sortedMenu = menuItems.sorted {
            $0.value < $1.value
        }
        
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
            List{
                ForEach(sortedMenu, id:\.key){
                    name,price in
                    
                    HStack{
                        Text(name)
                        Text("\(price,specifier: "%.2f")")
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

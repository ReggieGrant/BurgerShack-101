//
//  DessertView.swift
//  BurgerShack
//
//  Created by Reginald Grant on 2/23/26.
//

import SwiftUI



struct DessertView: View {
    
    let dessertItems =  [
        "Chocolate Cake": 6.00,
        "Stawberry Cheese Cake": 7.00,
        "Ice Cream Sundae": 13.50
        
    ]
    
    
    var sortedMenu:[(name:String, price:Double)] {
        dessertItems
            .sorted { $0.value > $1.value }
            .map {(name: $0.key, price:$0.value)}
    }
    
    var body: some View {
        
        List{
            ForEach(sortedMenu, id:\.name){ item in
                HStack{
                    Text(item.name)
                    
                }
            }
        }
    }
}
    
    #Preview {
        DessertView()
    }


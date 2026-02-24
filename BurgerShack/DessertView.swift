//
//  DessertView.swift
//  BurgerShack
//
//  Created by Reginald Grant on 2/23/26.
//

import SwiftUI

struct DessertView: View {
    let dessertMenuItems = [
        (name: "Ice Cream", description: "", price: 0.00)
    ]
    
    
    
    var body: some View {
        List(dessertMenuItems) { dessert in
            Text(dessert.name)
            
        }
        
    }
}

#Preview {
    DessertView()
}

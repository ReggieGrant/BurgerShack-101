//
//  MenuItemRowView.swift
//  BurgerShack
//
//  Created by Reginald Grant on 2/25/26.
//

import SwiftUI

struct MenuItemRowView: View {
    let name:String
    let price:Double
    
    var body: some View {
        HStack{
            Text(name)
                .font(.headline)
            Spacer()
            
            Text("$\(price)")
            
            
            
            
            Spacer()
            if price > 10{
                PremiumBadge()
            }
            
                          }
        .padding(6)
        
        
    }
}

#Preview {
    MenuItemRowView(name:"Pizza", price:9.99)
}

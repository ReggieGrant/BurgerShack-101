//
//  PremiumBadge.swift
//  BurgerShack
//
//  Created by Reginald Grant on 2/25/26.
//

import SwiftUI

struct PremiumBadge: View {
    var body: some View {
        
            
            HStack{
                Image(systemName:"star")
                    .foregroundColor(.yellow)
                Text("Premium")
                    .font(.caption)
            }
            .padding(6)
            .background(Color.orange.opacity(0.3))
            .cornerRadius(6)
        }
    }



#Preview {
    PremiumBadge()
}

//
//  RegularBadge.swift
//  BurgerShack
//
//  Created by Reginald Grant on 2/27/26.
//

import SwiftUI

struct RegularBadge: View {
    var body: some View {
        
            
            HStack{
                Image(systemName:"circle")
                    .foregroundColor(.blue)
                Text("Regular")
                    .font(.caption)
            }
            .padding(6)
            .background(Color.orange.opacity(0.3))
            .cornerRadius(6)
        }
    }

#Preview {
    RegularBadge()
}

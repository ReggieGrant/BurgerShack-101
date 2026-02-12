//
//  AboutView.swift
//  BurgerShack
//
//  Created by Reginald Grant on 2/9/26.
//

import SwiftUI

struct AboutView: View {
    
    
    var body: some View {
        VStack{
            Text("About Burger Shack")
                .font(.system(size:30))
                .foregroundStyle(.green)
            Text("Burger Shack is your go-to destination for honest burgers and and great company. No frills, no fuss-just flamed-grilled perfection served up fast and fresh every single day")
                .padding()
                .font(.system(size:14))
        HStack{
                Image(systemName: "map")
                    .font(.system(size:25))
                    .foregroundStyle(.yellow)
                    .padding()
                Image(systemName: "fork.knife")
                    .font(.system(size:25))
                    .foregroundStyle(.yellow)
                    .padding()
                Image(systemName: "leaf")
                    .font(.system(size:25))
                    .foregroundStyle(.yellow)        }
            
            
        }}}

#Preview {
    AboutView()
}

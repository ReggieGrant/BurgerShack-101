//
//  ContentView.swift
//  BurgerShack
//
//  Created by Reginald Grant on 2/9/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "keyboard")
                .font(.system(size:50))
                .foregroundStyle(.green)
            HStack{
                Text("Hello, world Cohort 7!")
                    .font(.caption)
                Text("My 1st App")
                    .font(.title2)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

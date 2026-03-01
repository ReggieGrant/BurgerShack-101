//
//  HomeMenuView.swift
//  BurgerShack
//
//  Created by Reginald Grant on 3/1/26.
//

import SwiftUI

struct HomeMenuView: View {
    var body: some View {
        NavigationStack{
            
            VStack{
                Image("BurgerShack")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding()
                Text("Burger Shack")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Welcome to our Burger Shack App")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            
            List{
                NavigationLink{
                    MenuView()
                }label:{
                    Label("Menu",systemImage:"fork.knife")
                        .font(.headline)
                }
                
                NavigationLink{
                    CustomerListView()
                }label:{
                    Label("Customers",systemImage:"person.2")
                        .font(.headline)
                }
                NavigationLink{
                    ReservationForm()
                }label:{
                    Label("Reservation",systemImage:"calendar")
                        .font(.headline)
            }
            
            
                
                
            }
        }
            }
        }
    
#Preview {
    HomeMenuView()
}

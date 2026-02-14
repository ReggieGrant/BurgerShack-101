//
//  ReservationForm.swift
//  BurgerShack
//
//  Created by Reginald Grant on 2/11/26.
//

import SwiftUI

struct ReservationForm: View {
    let resturantName = "Burger Shack"
    let maxGuest = 10
    
    // state variables
    // "if this change, update the UI"
    @State private var userName = "Someone"
    @State private var guestCount = 0
    @State private var phoneNumber = ""
    @State private var previewText = ""
    @State private var occasionName = ""
    @State private var childrenCount = 0
    var body: some View {
        Form{
            //header
            Section{
                Text(resturantName)
                    .font(.title3)
                    .bold()
                Text("Reservaton form")
                    .foregroundColor(.secondary)
            }
            
            Section{
                //$ this value can write and read
                TextField("Name",text:$userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                
                Stepper("Guest:\(guestCount)",value:$guestCount,in: 1...maxGuest)
                
                TextField("Phone", text:$phoneNumber)
                    .keyboardType(.numberPad)
                
                Section{
                    TextField("Occasion",text:$occasionName)
                        .textInputAutocapitalization(.words)
                        .autocorrectionDisabled(true)
                    
                Stepper("Children:\(childrenCount)",value:$childrenCount,in: 1...5)
                }
                
                Section{
                    Button("Preview reseration"){
                        previewText =
                    """
                    Name: \(userName)
                    Guests: \(guestCount)
                    Phone: \(phoneNumber)
                    Occasion: \(occasionName)
                    Children: \(childrenCount)
                    """
                    } }
                
                Text(previewText)
                    .font(.footnote)
            }
        }
    }
}

#Preview {
    ReservationForm()
}

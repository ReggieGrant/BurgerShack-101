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
    @State private var userName = ""
    @State private var guestCount = 0
    @State private var phoneNumber = ""
    @State private var previewText = ""
    @State private var occasionName = ""
    @State private var childrenCount = 0
    @State private var outDoorSeating = ""
    
    // Labels for guest
    func guestLabel(_ count:Int) -> String {
        count == 1 ? "Guest" : "Guests"
    }
    
    func estimateTotal(adults: Int, children: Int) -> Double{
        let adultPrice = 15.0
        let childrenPrice = 9.0
        
        return Double(adults) * adultPrice + Double(children) * childrenPrice
    }
    
    var body: some View {
        Form{
            //header
            Section{
                Text(resturantName)
                    .font(.title3)
                    .bold()
                Text("Reservation form")
                    .foregroundColor(.secondary)
            }
            
            Section("Reservation Details"){
                //$ this value can write and read
                TextField("Name",text:$userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                if userName.isEmpty {
                    Text("Please enter a name")
                        .foregroundColor(.red)
                }
                
                Stepper("Guest:\(guestCount)",value:$guestCount,in: 1...maxGuest)
                
                Stepper("Children:\(childrenCount)",value:$childrenCount,in: 1...5)
                
                
            }
                
                Section("Contact"){
                    
                    
                    TextField("555-555-5555", text:$phoneNumber)
                        .keyboardType(.numberPad)
                    if phoneNumber.isEmpty{
                        Text("Please enter your phone number")
                            .foregroundColor(Color.red)
                    }}
                
                Section("Optional"){
                    TextField("Occasion",text:$occasionName)
                        .textInputAutocapitalization(.words)
                        .autocorrectionDisabled(true)
                    
                
                }
                
                Section{
                    Button("Preview reservation"){
                        previewText =
                    """
                    Name: \(userName)
                    \(guestLabel(guestCount)): \(guestCount)
                    Phone: \(phoneNumber)
                    Occasion: \(occasionName)
                    Children: \(childrenCount)
                    """
                    } }
                
                
                Text(previewText)
                    .font(.footnote)
            
            Section(header: Text("Summary")){
                VStack{
                    HStack{
                        Text("Reservation Summary")
                            .font(.headline)
                        Spacer()
                        Image(systemName:"doc.text.magnifyingglass")
                    }
                    HStack{
                        Text("Adults")
                        Spacer()
                        Text("\(guestCount)")
                        
                    }
                    HStack{
                        Text("Children")
                        Spacer()
                        Text("\(childrenCount)")
                    }
                    HStack{
                        Text("Total:")
                        Spacer()
                        Text("$\(estimateTotal(adults: guestCount, children: childrenCount),specifier: "%.2f")")
                    }
                    // coloums for display the information
                    // adults=2 children=1 total = 39.0
                    
                }
                .padding()
                .background(Color.gray.opacity(0.08))
                .cornerRadius(12)
            }
            }
        }
    }


#Preview {
    ReservationForm()
}

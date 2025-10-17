//
//  AboutView.swift
//  LemonRestaurant-Ch4
//
//  Created by Marlo baguyos on 10/14/25.
//

import SwiftUI  // This imports the SwiftUI framework so you can build user interfaces

// This is your custom SwiftUI view called ReservationForm
struct ReservationForm: View {
    
    // MARK: - State Variables
    // These @State variables store user input and allow the UI to update when they change
    @State private var customerName: String = ""         // Stores the guest's name entered in the text field
    @State private var numberOfGuests: Int = 1           // Stores the number of guests selected via the stepper
    @State private var isVIP: Bool = false               // Stores whether the reservation is marked as VIP
    @State private var reservationDate: Date = Date()    // Stores the selected reservation date and time
    @State private var confirmationMessage: String? = nil // Stores the confirmation message after submission

    // This computed property formats the reservationDate into a readable string (e.g., 10/17/2025 3:45 PM)
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy h:mm a"       // Custom format: month/day/year hour:minute AM/PM
        return formatter.string(from: reservationDate)  // Converts the Date object into
    }
    
    // MARK: - View Body
    var body: some View {
        // Form is a container that organizes input fields in a scrollable, styled layout
        Form {
            
            // Section groups related fields together with an optional header
            Section(header: Text("Guest Info")) {
                // TextField lets the user type in their name; bound to customerName
                TextField("Customer Name", text: $customerName)
                
                // Stepper lets the user increase or decrease the number of guests; bound to numberOfGuests
                Stepper("Number of Guests: \(numberOfGuests)", value: $numberOfGuests, in: 1...20)
                
                // Toggle creates a switch for yes/no input; bound to isVIP
                Toggle("VIP Reservation", isOn: $isVIP)
            }

            // Section for selecting the reservation date and time
            Section(header: Text("Date")) {
                // DatePicker lets the user choose a date and time; bound to reservationDate
                DatePicker("Reservation Date", selection: $reservationDate, displayedComponents: [.date, .hourAndMinute])
            }

            // Section for the submit button and confirmation message
            Section {
                // Button triggers an action when tapped
                Button("Submit Reservation") {
                    // This sets the confirmation message using the entered name and formatted date
                    confirmationMessage = "Reservation submitted for \(customerName) on \(formattedDate)"
                }

                // This displays the confirmation message only if it's been set (after submission)
                if let message = confirmationMessage {
                    Text(message)                         // Shows the message on screen
                        .font(Font.headline.bold())       // Makes the text bold and styled as a headline
                        .foregroundColor(.green)          // Colors the text green for visibility
                        .padding(10)                      // Adds spacing around the message
                }
            }
        }
    }
}

// MARK: - Preview
// This shows a live preview of your view in Xcode's canvas
#Preview {
    ReservationForm()
}


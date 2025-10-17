//
//  AboutView.swift
//  LemonRestaurant-Ch4
//
//  Created by Marlo baguyos on 10/14/25.
//

import SwiftUI  // Import the SwiftUI framework to build declarative UIs

// Define a custom SwiftUI view named `ReservationForm`
struct ReservationForm: View {
    
    // MARK: - State Variables
    @State private var customerName: String = ""          // Stores the guest's name input
    @State private var numberOfGuests: Int = 0            // Stores the number of guests selected
    @State private var isVIP: Bool = false                // Tracks whether the reservation is marked VIP
    @State private var reservationDate: Date = Date()     // Stores the selected reservation date and time
    @State private var confirmationMessage: String? = nil // Stores the success message after submission
    @State private var errorMessage: String? = nil        // Stores the error message if name is empty

    // Formats the reservation date into a readable string
    var formattedDate: String {
        let formatter = DateFormatter()                   // Create a date formatter
        formatter.dateFormat = "MM/dd/yyyy h:mm a"        // Format: month/day/year hour:minute AM/PM
        return formatter.string(from: reservationDate)    // Return formatted date string
    }
    
    // MARK: - View Body
    var body: some View {
        VStack {
            // Display the restaurant logo
            Image("littleLemonLogo")
                .resizable()            // Make the image resizable
                .scaledToFit()          // Maintain aspect ratio
                .frame(height: 80)      // Set fixed height
            
            // Form layout for reservation inputs
            Form {
                // Section for guest information
                Section(header: Text("New Reservation")) {
                    
                    // TextField for entering customer name
                    TextField("Please enter your name", text: $customerName)
                        .padding(5)
                        .font(.system(size: 18, weight: .medium))
                    
                    // Stepper to select number of guests (0 to 20)
                    Stepper(
                        "Number of Guests: \(numberOfGuests)",
                        value: $numberOfGuests,
                        in: 0...20
                    )
                    .padding(5)
                    
                    // Show warning if guest count exceeds 5
                    if numberOfGuests > 5 {
                        Text("Too many Go Away")               // Display warning message
                            .foregroundColor(.secondary)       // Use subtle text color
                    }
                    
                    // Toggle to mark reservation as VIP
                    Toggle("VIP Reservation", isOn: $isVIP)
                        .padding(5)
                    
                    // DatePicker to select reservation date and time
                    DatePicker(
                        "Reservation Date",
                        selection: $reservationDate,
                        displayedComponents: [.date, .hourAndMinute]
                    )
                    
                    // Submit button to confirm reservation
                    Button("Submit Reservation") {
                        // Validate name input
                        if customerName.trimmingCharacters(in: .whitespaces).isEmpty {
                            errorMessage = "Please enter your name"     // Show error if name is empty
                            confirmationMessage = nil                   // Clear confirmation
                        } else {
                            confirmationMessage = "Reservation submitted for \(customerName) on \(formattedDate)" // Show success message
                            errorMessage = nil                          // Clear error
                        }
                    }
                    // Disable button if name is empty or just spaces
                    .disabled(customerName.trimmingCharacters(in: .whitespaces).isEmpty)
                    // Change button color based on enabled state
                    .foregroundColor(customerName.trimmingCharacters(in: .whitespaces).isEmpty ? .gray : .blue)
                    
                    // Show confirmation message if available
                    if let message = confirmationMessage {
                        Text(message)
                            .font(Font.headline.bold())
                            .foregroundColor(.green)
                            .padding(10)
                    }
                    
                    // Show error message if available
                    if let error = errorMessage {
                        Text(error)
                            .foregroundColor(.red)
                            .font(.subheadline)
                            .padding(.top, 5)
                    }
                }
            }
        }
    }
}

// MARK: - Preview
#Preview {
    ReservationForm()  // Show live preview in Xcode canvas
}


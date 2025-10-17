//
//  AboutView.swift
//  LemonRestaurant-Ch4
//
//  Created by Marlo baguyos on 10/14/25.
//

import SwiftUI

struct AboutView: View {
    //var
    let userName = "Marlo"
    @State private var userName2 = "Manny"
    @State private var orders = 0
    @State private var reservationCount = 0
    var body: some View {
        VStack {
            Text("Welcome \(userName) to Little Lemon!")
                .font(.title)
                .padding()
            Image("littleLemonLogo")
                .resizable()            //Make the image resizable
                .scaledToFit()          //Maintains aspect ratio
                .frame(height:80)       //Limits height to 200 points
            TextField("Enter your name", text: $userName2)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Hi \(userName2)!")
            Stepper("Orders: \(orders)",value:$orders, in: 1...5)
            
            HStack(spacing:20){
                Button("Order again"){
                    orders += 1
                }
                .font(.headline)
                .padding(10)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                //challenge add another button to reset to 0
                Button("Reset Orders"){
                    orders = 0
                }
                .font(.headline)
                .padding(10)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            Text("You have order \(orders) time(s)")
            Button("Add reservation"){
                reservationCount += 1
            }
            Text(String(repeating:"🍽️", count:reservationCount))
        }
    }
}

#Preview {
    AboutView()
}

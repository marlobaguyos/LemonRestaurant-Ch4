//
//  LoginView.swift
//  LemonRestaurant-Ch4
//
//  Created by Marlo baguyos on 10/18/25.
//

import SwiftUI

struct LoginView: View {
//    @State private var userName: String = ""
    @Binding var userName:String
    @Binding var isLoggedIn:Bool
    var body: some View {
        NavigationView {
            VStack {
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:100)
                
                TextField("Enter your username:", text:$userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Login"){
                    if userName == "Sam"{
                        isLoggedIn = true
                    }
                }
                .font(.headline)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                Text("Hello \(userName)")
            }
        }
    }
}

//#Preview {
//    LoginView()
//}

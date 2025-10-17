//
//  MainView.swift
//  LemonRestaurant-Ch4
//
//  Created by Marlo baguyos on 10/18/25.
//

import SwiftUI

struct MainView: View {
    @State private var uName = ""
    @State private var isLoggedIn = true
    var body: some View {
        NavigationView {
            VStack {
                if isLoggedIn == true {
                    Text("Welcome \(uName)")
                        .font(.largeTitle)
                        .bold()
                    NavigationLink("About us",destination:AboutView())
                    Button("Logout"){
                        isLoggedIn = false
                    }
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }else {
                    LoginView(userName:$uName, isLoggedIn: $isLoggedIn)
                }
            }
        }
    }
}

#Preview {
    MainView()
}

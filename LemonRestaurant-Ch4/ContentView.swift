//
//  ContentView.swift
//  LemonRestaurant-Ch4
//
//  Created by Marlo baguyos on 10/14/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Image(systemName: "sun.min")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                NavigationLink(destination:AboutView()){Text("About")
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

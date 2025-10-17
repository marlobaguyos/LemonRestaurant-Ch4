//
//  AboutView.swift
//  LemonRestaurant-Ch4
//
//  Created by Marlo baguyos on 10/14/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("Welcome to Little Lemon!")
                .font(.title)
                .padding()
            Image("littleLemonLogo")
                .resizable()            //Make the image resizable
                .scaledToFit()          //Maintains aspect ratio
                .frame(height:80)       //Limits height to 200 points
        }
    }
}

#Preview {
    AboutView()
}

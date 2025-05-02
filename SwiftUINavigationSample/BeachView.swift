//
//  BeachView.swift
//  SwiftUINavigationSample
//
//  Created by Kristanto Sean on 2025-05-01.
//

import SwiftUI

struct BeachView: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                
                // Background
                Image("beach")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                LinearGradient(
                    colors: [
                        .black.opacity(0),
                        .black.opacity(0),
                        .black.opacity(0),
                        Color("GradientBG").opacity(1)
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                ).ignoresSafeArea()
                
                // UI
                VStack {
                    NavigationLink(destination: BeachExploreView()) {
                        Text("Explore the Beach").padding()
                    }.buttonStyle(.borderedProminent)
                }
                
                
            }.navigationBarTitleDisplayMode(.large)
        }
        
    }
}

#Preview {
    BeachView()
}

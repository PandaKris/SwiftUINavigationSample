//
//  ForestView.swift
//  SwiftUINavigationSample
//
//  Created by Kristanto Sean on 2025-05-01.
//

import SwiftUI

struct ForestView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("forest")
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
                    NavigationLink(destination: ForestExploreView()) {
                        Text("Explore the Forest").padding()
                    }.buttonStyle(.borderedProminent)
                }
            }.navigationBarTitleDisplayMode(.large)
        }

    }
}

#Preview {
    ForestView()
}

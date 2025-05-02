//
//  ForestView.swift
//  SwiftUINavigationSample
//
//  Created by Kristanto Sean on 2025-05-01.
//

import SwiftUI

struct ForestView: View {
    
    @State private var path: [String] = []

    var body: some View {
        NavigationStack(path: $path)  {
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
                    Button {
                        path.append("forestExplore")
                    } label: {
                        Text("Explore the Forest").padding()
                    }.buttonStyle(.borderedProminent)
                }
            }.navigationBarTitleDisplayMode(.large)
            .navigationDestination(for: String.self) { item in
                if item == "forestExplore" {
                    ForestExploreView()
                }
            }
        }

    }
}

#Preview {
    ForestView()
}

//
//  MountainView.swift
//  SwiftUINavigationSample
//
//  Created by Kristanto Sean on 2025-05-01.
//

import SwiftUI

struct MountainView: View {
    
    @State private var path: [String] = []

    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                Image("mountain")
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
                        path.append("mountainExplore")
                    } label: {
                        Text("Explore the Mountain").padding()
                    }.buttonStyle(.borderedProminent)
                }
                
            }.navigationBarTitleDisplayMode(.large)
            .navigationDestination(for: String.self) { item in
                if item == "mountainExplore" {
                    MountainExploreView()
                }
            }
        }
    }
}

#Preview {
    MountainView()
}

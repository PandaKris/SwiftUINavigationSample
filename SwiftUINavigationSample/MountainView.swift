//
//  MountainView.swift
//  SwiftUINavigationSample
//
//  Created by Kristanto Sean on 2025-05-01.
//

import SwiftUI

struct MountainView: View {
    var body: some View {
        NavigationStack {
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
                        .white.opacity(1)
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                ).ignoresSafeArea()
                
                // UI
                VStack {
                    NavigationLink(destination: MountainExploreView()) {
                        Text("Explore the Mountain").padding()
                    }.buttonStyle(.borderedProminent)
                }
                
            }
        }
    }
}

#Preview {
    MountainView()
}

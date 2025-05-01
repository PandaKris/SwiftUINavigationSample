//
//  ContentView.swift
//  SwiftUINavigationSample
//
//  Created by Kristanto Sean on 2025-05-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ForestView()
                .tabItem {
                    Label("Forest", systemImage: "tree")
                }

            MountainView()
                .tabItem {
                    Label("Mountain", systemImage: "mountain.2")
                }

            BeachView()
                .tabItem {
                    Label("Beach", systemImage: "beach.umbrella")
                }
        }
    }
}

#Preview {
    ContentView()
}

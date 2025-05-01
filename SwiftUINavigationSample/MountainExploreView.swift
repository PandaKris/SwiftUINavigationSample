//
//  MountainExploreView.swift
//  SwiftUINavigationSample
//
//  Created by Kristanto Sean on 2025-05-01.
//

import SwiftUI

struct MountainExploreView: View {
    
    @State var isSheetPresented: Bool = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color(
                    cgColor: CGColor(
                        red: 0.68,
                        green: 0.85,
                        blue: 0.9,
                        alpha: 1
                    )
                ).ignoresSafeArea()
                                                
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
                    Image("Bombardino Crocodilo")
                        .resizable()
                        .scaledToFit()
                        .ignoresSafeArea()
                    
                    Button {
                        isSheetPresented.toggle()
                    } label: {
                        Text("Learn more about this anomaly").padding()
                    }.buttonStyle(.borderedProminent)
                                        
                }
                
                .sheet(isPresented: $isSheetPresented) {
                    Text("Details about this anomaly go here.")
                }

                
            }.navigationTitle("Bombardino Crocodilo")
        }
    }
}

#Preview {
    MountainExploreView()
}

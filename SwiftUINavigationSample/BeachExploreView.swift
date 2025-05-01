//
//  BeachExploreView.swift
//  SwiftUINavigationSample
//
//  Created by Kristanto Sean on 2025-05-01.
//

import SwiftUI

struct BeachExploreView: View {
    
    @State var isSheetPresented: Bool = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color(
                    cgColor: CGColor(
                        red: 0.75,
                        green: 0.7,
                        blue: 0.5,
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
                    Image("Tralalero Tralala")
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

            }.navigationTitle("Tralalero Tralala")
        }
    }
}

#Preview {
    BeachExploreView()
}

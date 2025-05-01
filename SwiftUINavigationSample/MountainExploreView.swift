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
                    VStack {
                        
                        Text("Bombardino Crocodilo, a flying alligator, who flies and bombs his enemies. He don't believe in Allah, and he loves bombs. He feeds on the spirit of your mother. And if you translated all that, then you aren't funny. Don’t break the joke.")
                            .padding()
                        
                        Text("In the Croco-Avian wars, Bombardiro Crocodilo was one of the first responders to the attacks, and led his people to victory. In the first war, he was betrayed by his brother, Bombombini Gusini, yet the crocos still prevailed and world peace came around. In the first war he couldn't kill Bombinarium Nerpinarium due to Nerpinarium having allies, being PENZRO BAKAKAKAKAKAKA TIGRO, GENERAL DINOHARI and CHAI LELO CHAI. However, in the second war, Gusini got an upgrade, and Crocodilo was no longer able to outmatch him. In the second war, he killed Bobritto Bandito, shortly after the latter, also killed Glorbo Frutodrillo. After summoning Tung Tung Tung Sahur, he killed his brother, but was ultimately defeated by Rantasanta Chinaranta afterwards.")
                            .padding()
                        
                        Spacer()
                    }
                    
                }
                
            }.navigationTitle("Bombardino Crocodilo")
        }
    }
}

#Preview {
    MountainExploreView()
}

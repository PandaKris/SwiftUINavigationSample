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
                Color("MountainColor").ignoresSafeArea()

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
                    
                    Text("🌲 Nature & Scenery")
                        .font(.headline)
                        .padding(.top)
                    HStack(spacing: 20) {
                        Image(systemName: "mountain.2")
                        Image(systemName: "tree.fill")
                        Image(systemName: "leaf.fill")
                        Image(systemName: "globe.europe.africa.fill")
                        Image(systemName: "binoculars.fill")
                    }

                    Text("🥾 Activities")
                        .font(.headline)
                        .padding(.top)
                    HStack(spacing: 20) {
                        Image(systemName: "figure.hiking")
                        Image(systemName: "figure.climbing")
                        Image(systemName: "map.fill")
                        Image(systemName: "location.north.line.fill")
                        Image(systemName: "flag.checkered.2.crossed")
                    }

                    Text("🌦 Weather")
                        .font(.headline)
                        .padding(.top)
                    HStack(spacing: 20) {
                        Image(systemName: "cloud.sun")
                        Image(systemName: "cloud.snow")
                        Image(systemName: "thermometer.snowflake")
                        Image(systemName: "wind")
                        Image(systemName: "cloud.fog")
                    }

                    Text("🎒 Gear")
                        .font(.headline)
                        .padding(.top)
                    HStack(spacing: 20) {
                        Image(systemName: "backpack")
                        Image(systemName: "compass.drawing")
                        Image(systemName: "tshirt.fill")
                        Image(systemName: "shoeprints.fill")
                        Image(systemName: "tent.fill")
                    }

                    Image("Bombardino Crocodilo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 160)
                        .padding()
                    
                    Button {
                        isSheetPresented.toggle()
                    } label: {
                        Text("Learn more about this anomaly").padding()
                    }.buttonStyle(.borderedProminent)
                    
                    Spacer()
                                        
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
                
            }.navigationTitle("Mountain Details")
        }
    }
}

#Preview {
    MountainExploreView()
}

//
//  ForestExploreView.swift
//  SwiftUINavigationSample
//
//  Created by Kristanto Sean on 2025-05-01.
//

import SwiftUI

struct ForestExploreView: View {
    
    @State var isSheetPresented: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("ForestColor").ignoresSafeArea()

                                
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
                    
                    Text("🌳 Trees & Plants")
                        .font(.headline)
                        .padding(.top)
                    HStack(spacing: 20) {
                        Image(systemName: "tree.fill")
                        Image(systemName: "leaf")
                        Image(systemName: "leaf.fill")
                        Image(systemName: "tropicalstorm")
                        Image(systemName: "globe.asia.australia.fill")
                    }

                    Text("🐿️ Animals & Life")
                        .font(.headline)
                        .padding(.top)
                    HStack(spacing: 20) {
                        Image(systemName: "pawprint.fill")
                        Image(systemName: "ant.fill")
                        Image(systemName: "tortoise.fill")
                        Image(systemName: "ladybug.fill")
                        Image(systemName: "bird.fill")
                    }


                    Text("🌦 Weather & Environment")
                        .font(.headline)
                        .padding(.top)
                    HStack(spacing: 20) {
                        Image(systemName: "cloud.drizzle")
                        Image(systemName: "humidity")
                        Image(systemName: "wind")
                        Image(systemName: "cloud.fog")
                        Image(systemName: "sun.max")
                    }

                    Text("🪵 Tools & Exploration")
                        .font(.headline)
                        .padding(.top)
                    HStack(spacing: 20) {
                        Image(systemName: "backpack")
                        Image(systemName: "binoculars.fill")
                        Image(systemName: "map")
                        Image(systemName: "location.fill")
                        Image(systemName: "tent.fill")
                    }
                    
                    Image("Brr Brr Patapim")
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
                        
                        Text("Brr Brr Patapim is one of the brainrot animals created by AI and published on tiktok. He is actually secretly Elon Musk, the shadow president of America. Patapim reportedly made his immense wealth by trading penny stocks for inflated prices during the Great Depression. This later inspired the Oscar nominated film “The Wolf Of Wall Street”.")
                            .padding()
                        
                        Text("In the Croco-Avian wars, Patapim remains neutral, as he doesn't care about the wars. However, when a squad of crocos was crossing his forest, he grew angry and destroyed them for disturbing his peace. This almost caused the crocos to declare war on him, yet an agreement was reached at the last minute, and Patapim peacefully remained in his forest. In the second war, Bombardiro Crocodillo accidentally carpet bombed Patapim's forest, after which Patapim declared war on him. After Bombardiro's death, Patapim took control of the Croco nation, and retired to the Russian Taiga as their ruler.")
                            .padding()
                        
                        Spacer()
                    }
                }

            }.navigationTitle("Forest Details")
        }
    }
}

#Preview {
    ForestExploreView()
}

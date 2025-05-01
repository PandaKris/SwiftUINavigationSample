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
                Color(
                    cgColor: CGColor(
                        red: 0.13,
                        green: 0.55,
                        blue: 0.13,
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
                    Image("Brr Brr Patapim")
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
                        
                        Text("Brr Brr Patapim is one of the brainrot animals created by AI and published on tiktok. He is actually secretly Elon Musk, the shadow president of America. Patapim reportedly made his immense wealth by trading penny stocks for inflated prices during the Great Depression. This later inspired the Oscar nominated film “The Wolf Of Wall Street”.")
                            .padding()
                        
                        Text("In the Croco-Avian wars, Patapim remains neutral, as he doesn't care about the wars. However, when a squad of crocos was crossing his forest, he grew angry and destroyed them for disturbing his peace. This almost caused the crocos to declare war on him, yet an agreement was reached at the last minute, and Patapim peacefully remained in his forest. In the second war, Bombardiro Crocodillo accidentally carpet bombed Patapim's forest, after which Patapim declared war on him. After Bombardiro's death, Patapim took control of the Croco nation, and retired to the Russian Taiga as their ruler.")
                            .padding()
                        
                        Spacer()
                    }
                }

            }.navigationTitle("Brr Brr Patapim")
        }
    }
}

#Preview {
    ForestExploreView()
}

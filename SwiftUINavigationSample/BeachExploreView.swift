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
                    VStack {
                        
                        Text("Tralalero Tralala (rarely “Tralalelo Tralala”) (Italian: Trallallero Trallallà) is one of the original italian brainrot animals. He has a son, Merdardo, who is friends with Zip Zip Gnoccolino. He was considered brother in arms by Libyan dictator, Muammar Gaddaffi. He also met Benito Mussolini.")
                            .padding()
                        
                        Text("Trallallero Trallallà was allied with the crocos in both Croco-Avian wars. However, he couldn't contribute much because of the aerial nature of most of their enemies. He did take out one important enemy commander in the first war, which greatly helped the crocos win. Rumor states that in the second war, Tralelo will save the crocos from imminent defeat by assassinating Bombombini Gusini by climbing into his engines. However, this was anticipated and Tralalero was caught by a group of Bengali Fishermen (led by Roshogulla Hasimollah) over the pre-planned ocean route Bombombini Gusini would intentionally fly. He was then incinerated by Rantasanta Chinaranta and consumed by the fishermen. There is rumors of the Cybertruck Assassins Involvment in Tralalero tralala's success in the second war. But all information on the matter has long been redacted. There were, however, reported sightings of Piccione Macchina in the skies that day, boosting the credibility of the theory, claiming some sort of cooperation between the Cybertruck Assassins and Tralalero Tralala took place that day.")
                            .padding()
                        
                        Spacer()
                    }
                }

            }.navigationTitle("Tralalero Tralala")
        }
    }
}

#Preview {
    BeachExploreView()
}

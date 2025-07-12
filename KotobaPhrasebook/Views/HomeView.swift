//
//  HomeView.swift
//  KotobaPhrasebook
//
//  Created by Kellie Ho on 2025-07-10.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = "Search" //replace with dynamic data later for search functionality

    var body: some View {
        let categories = ["Greetings", "Food", "Travel", "Shopping", "Numbers", "Time"] //replace with dynamic data later

        

            VStack(alignment: .leading) {

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(categories, id: \.self) { category in
                            Text(category)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .background(Color(.systemGray5))
                                .cornerRadius(12)
                        }
                    }
                    .padding(.horizontal, 2)
                    .padding(.horizontal, 18)
                }
                .padding(.bottom, 16)
                
                

                PhraseList()

//                    .mask(
//                    LinearGradient(
//                        gradient: Gradient(stops: [
//                            .init(color: .clear, location: 0.0),
//                            .init(color: .black, location: 0.05),
//                            .init(color: .black, location: 1.0)
//                        ]),
//                        startPoint: .top,
//                        endPoint: .bottom
//                    )
//                )
                
            }

 
       
    }
}

#Preview {
    HomeView()
        .modelContainer(SampleData.shared.modelContainer)
}

//The .navigationTitle and .toolbar modifiers only work when the view is inside a navigation container.

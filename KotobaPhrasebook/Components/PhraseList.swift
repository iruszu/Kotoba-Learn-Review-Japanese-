//
//  PhraseList.swift
//  KotobaPhrasebook
//
//  Created by Kellie Ho on 2025-07-04.
//

import SwiftUI
import SwiftData

struct PhraseList: View {
    @Query(sort: \Phrase.text) var phrases: [Phrase]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(phrases) { phrase in
                Button(action: {}) {
                    // Navigate to phrase detail view
                    PhraseCell(phrase: phrase)
                        .padding(1)
                }
            }
        }.padding(.horizontal, 18)

        
    }
}

#Preview {
    PhraseList()
        .modelContainer(SampleData.shared.modelContainer)
}

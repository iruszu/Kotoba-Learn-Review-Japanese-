//
//  PhraseCell.swift
//  KotobaPhrasebook
//
//  Created by Kellie Ho on 2025-07-01.
//

import SwiftUI

struct PhraseCell: View {
    // Takes in phrase, translation, categories, audio file (REPLACE WITH DYNAMIC DATA), favourited (bool)
    
    @Bindable var phrase: Phrase
    
    @State private var isPlaying: Bool = false // Example state for audio playback
    
    var body: some View {
        
        HStack() {
            VStack(alignment: .leading) {
                Text(phrase.translation)
                    .foregroundColor(.secondary)
                Text(phrase.text)
                    .font(.title2)
                    .foregroundColor(.primary)
                
                HStack {
                    //CATEGORY LABELS,  REPLACE WITH DYNAMIC DATA & COMPONENT FOR THE CATEGORY
                    Text("GREETINGS")
                        .foregroundColor(.white)
                        .font(.caption2)
                        .bold()
                        .padding(8)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    
                }
                    
            }
            
            Spacer()
            
            Button(action: {
                // Action for favourite button (REPLACE WITH FAVOURITE TOGGLE)
                phrase.isFavourited.toggle()
            }) {
                Image(systemName: phrase.isFavourited ? "star.fill":"star") //if favourited, else "star": use ternary operator to toggle
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.blue)
            }
            .padding(8)
            
            Button(action: {
                // Action for audio button (REPLACE WITH AUDIO PLAYER)
               isPlaying.toggle() // Example action to toggle audio playback state
            }) {
                Image(systemName: isPlaying ? "pause.fill" : "play.fill") //if playing, else "play": use ternary operator to toggle
                    .resizable()
                    .frame(width: 20, height: 24)
                    .foregroundColor(.gray)
            }
            
        }   .padding(15)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .frame(maxWidth: .infinity, alignment: .center)
        
    }
}

#Preview {
    PhraseCell(phrase: Phrase.sampleData[1])

}

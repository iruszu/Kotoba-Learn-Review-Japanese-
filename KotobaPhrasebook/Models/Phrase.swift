//
//  Phrase.swift
//  KotobaPhrasebook
//
//  Created by Kellie Ho on 2025-07-04.
//

import Foundation
import SwiftData

@Model
class Phrase: Identifiable {
    var id: UUID = UUID()
    var text: String
    var translation: String
    var isFavourited: Bool = false
    
    init(text: String, translation: String, isFavourited: Bool = false) {
        self.text = text
        self.translation = translation
        self.isFavourited = isFavourited
        
    }
    
    static let sampleData = [
        Phrase(text: "こんにちは", translation: "Hello", isFavourited: true),
        Phrase(text: "ありがとう", translation: "Thank you", isFavourited: true),
            Phrase(text: "さようなら", translation: "Goodbye"),
            Phrase(text: "すみません", translation: "Excuse me / I'm sorry"),
            Phrase(text: "お願いします", translation: "Please"),
        Phrase(text: "はい", translation: "Yes"),
        Phrase(text: "いいえ", translation: "No"),
        Phrase(text: "おはようございます", translation: "Good morning"),
        Phrase(text: "こんばんは", translation: "Good evening"),
        Phrase(text: "おやすみなさい", translation: "Good night")
    ]

}



//Must initialize all stored properties unless they have a default value or are optional

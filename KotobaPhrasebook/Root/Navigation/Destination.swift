//
//  Destination.swift
//  KotobaPhrasebook
//
//  Created by Kellie Ho on 2025-07-10.
//

import Foundation

enum Destination: Hashable {
    case home
    case flashcards
    case addPhrase
    case editPhrase(Phrase)
    case browsePhrases
}

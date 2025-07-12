//
//  Tabs.swift
//  KotobaPhrasebook
//
//  Created by Kellie Ho on 2025-07-10.
//

import Foundation

enum Tabs {
    case home
    case flashcards
    case browsePhrases
    
    var name: String {
        switch self {
         case .home:
            return "Home"
        case .flashcards:
            return "Flashcards"
        case .browsePhrases:
            return "Browse"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .home:
            return "house"
        case .flashcards:
            return "rectangle.stack"
        case .browsePhrases:
            return "plus.magnifyingglass"
        }
    }
    
    
    
}

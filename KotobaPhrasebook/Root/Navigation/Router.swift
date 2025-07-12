//
//  Router.swift
//  KotobaPhrasebook
//
//  Created by Kellie Ho on 2025-07-10.
//

import Foundation
import SwiftUI

@Observable
final class Router {
    var selectedTab: Tabs = .home //sets Home tab to be the first tab selected when the app launches
    var phraseTabPath : [Destination] = []

    func gotoHome() {
        selectedTab = .home
        phraseTabPath = []
        
    }
    
    func gotoEditPhrase(_ phrase: Phrase) {
        phraseTabPath.append(.editPhrase(phrase)) }
    
    func gotoAddPhrase() {
        phraseTabPath.append(.addPhrase)
    }
    
  // add other navigation methods as needed
    
    
}


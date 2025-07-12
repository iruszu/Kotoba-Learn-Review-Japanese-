//
//  PhraseRouter.swift
//  KotobaPhrasebook
//
//  Created by Kellie Ho on 2025-07-08.
//

import Foundation

protocol PhraseRouter {
    func gotoPhraseDetail(_ phrase: Phrase)
    func gotoEditPhrase(_ phrase: Phrase)
}

///“Any type (class, struct, etc.) that claims to be a PhraseRouter must provide these methods.”

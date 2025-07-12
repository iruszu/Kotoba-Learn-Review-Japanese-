//
//  KotobaPhrasebookApp.swift
//  KotobaPhrasebook
//
//  Created by Kellie Ho on 2025-07-01.
//

import SwiftUI

@main
struct KotobaPhrasebookApp: App {
    let router = Router()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(router)
        }
    }
}

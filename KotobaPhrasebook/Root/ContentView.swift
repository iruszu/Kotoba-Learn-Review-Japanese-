//
//  ContentView.swift
//  KotobaPhrasebook
//
//  Created by Kellie Ho on 2025-07-10.
//

import SwiftUI

struct ContentView: View {
    @Environment(Router.self) var router
    @State private var searchText = ""
    var body: some View {
        @Bindable var router = router
        // The main tab view for the app, allowing navigation between different sections
        TabView(selection: $router.selectedTab) {
            Tab(Tabs.home.name,
                systemImage: Tabs.home.systemImageName,
                value: Tabs.home) {
                NavigationStack(path: $router.phraseTabPath) {
                
                    //TODO: display view for home tab
                    HomeView()
                    
                }
                .navigationDestination(for: Destination.self) { dest in
                    //TODO: Handle navigation to different destinations (RouterView)

                    
                    
                    PhraseList()
                }
            }
            
            Tab(Tabs.flashcards.name,
                systemImage: Tabs.flashcards.systemImageName,
                value: Tabs.flashcards) {
                NavigationStack(path: $router.phraseTabPath) {
                    //TODO: display view for home tab
                    PhraseList()
                }
                .navigationDestination(for: Destination.self) { dest in
                    //TODO: Handle navigation to different destinations (RouterView)
                    PhraseList()
                }
            }
            
            Tab(Tabs.browsePhrases.name,
                systemImage: Tabs.browsePhrases.systemImageName,
                value: Tabs.browsePhrases) {
                NavigationStack(path: $router.phraseTabPath) {
                    //TODO: starting (root) view for this tab's navigation stack
                    PhraseList()
                }
                .navigationDestination(for: Destination.self) { dest in
                    //TODO: Handle navigation to different destinations (RouterView) by pushing views onto the navigation stack
                    PhraseList()
                }
            }
            
            
        }
        
        
        //
        
        
        
    }
}

#Preview {
    ContentView()
        .environment(Router())
        .modelContainer(SampleData.shared.modelContainer)
}

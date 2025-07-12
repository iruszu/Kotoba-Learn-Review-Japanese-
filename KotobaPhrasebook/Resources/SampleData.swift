//
//  SampleData.swift
//  KotobaPhrasebook
//
//  Created by Kellie Ho on 2025-07-04.
//

//Sets up preview-only swiftdata environment by making fake data using an in-memory model

import Foundation
import SwiftData

@MainActor //declaring that all code must run on the main thread (path of execution related to screen/UI)
class SampleData {
    
    //5. creating a singleton so all our previews use/share this sample data
    static let shared = SampleData()
    
    
    // 6. Creating a shortcut to get the swiftdata modelcontext (e.g. instead of SampleData.shared.modelContainer.mainContext -> SampleData.shared.context.insert)
    var context: ModelContext {
        modelContainer.mainContext
    }
    
    //1. Create a model container that provides sample data
    let modelContainer: ModelContainer
    
    private init() {
        //2. Define a schema that creates your models (only have 1 rn). The schema of a model helps connect the classes you define in your code to the data in the data store.
        let schema = Schema([Phrase.self])
        
        //3. specify that this model container should store data in memory so that it does not persist sample data, will only load in previews
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)
        
        //4. create a modelcontainer but the process might fail (e.g. invalid schema), so we must catch that error. We need this to simulate a working SwiftData environment for previews
        do {
            modelContainer = try ModelContainer(for: schema, configurations: modelConfiguration)
            
            insertSampleData() //8. call the insertSampleData function. The func doesn't have cases expected to fail, so it doesn't require a try
            try context.save() //9. finalizes and persist any changes made to the model (insert data -> save data there)
            
        } catch {
                fatalError("Unable to create ModelContainer: \(error)")
            }
    }
    
    //7. Create a function that allows us to insert the sample data into our model context for each #Preview
    private func insertSampleData() {
        for phrase in Phrase.sampleData {
            context.insert(phrase) //inserts phrase to in-memory temporary database (in our previews)
        }
    }
    
}

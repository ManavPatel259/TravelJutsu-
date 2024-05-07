//
//  TravelJutsuApp.swift
//  TravelJutsu
//
//  Created by Manav Patel on 2024-03-21.
//

import SwiftUI
import SwiftData
import FirebaseCore

@main
struct TravelJutsuApp: App {
    
    init(){
        FirebaseApp.configure() 
    }
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            LaunchPageView()
        }
        .modelContainer(sharedModelContainer)
    }
}

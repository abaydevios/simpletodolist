//
//  SimpleToDoListApp.swift
//  Shared
//
//  Created by Shaikenov Abay on 06.03.2022.
//

import SwiftUI

@main
struct SimpleToDoListApp: App {
    let persistenceController = PersistenceController.shared
    let persistenceContainer = CoreDateManager.shared.persistentContainer
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceContainer.viewContext)
        }
    }
}

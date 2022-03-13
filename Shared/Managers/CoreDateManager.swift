//
//  CoreDateManager.swift
//  SimpleToDoList
//
//  Created by Shaikenov Abay on 06.03.2022.
//

import Foundation
import CoreData

class CoreDateManager {
    let persistentContainer: NSPersistentContainer
    static let shared: CoreDateManager = CoreDateManager()
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "SimpleToDoModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Enable to initialize Core Data \(error)")
            }
        }
    }
}

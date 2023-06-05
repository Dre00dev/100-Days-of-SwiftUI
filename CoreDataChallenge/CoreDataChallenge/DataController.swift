//
//  DataController.swift
//  CoreDataChallenge
//
//  Created by Andres Pulgarin on 6/5/23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Model")
    
    init() {
        container.loadPersistentStores{ description, error in
            if let error = error {
                print("Core Data failed to load rip: \(error.localizedDescription)")
                return
            }
            
            self.container.viewContext.mergePolicy =  NSMergePolicy.mergeByPropertyObjectTrump
        }
    }
}

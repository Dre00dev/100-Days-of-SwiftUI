//
//  DataController.swift
//  BookWorm
//
//  Created by Andres Pulgarin on 4/26/23.
//

import CoreData  //documents directory
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}

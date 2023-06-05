//
//  CoreDataChallengeApp.swift
//  CoreDataChallenge
//
//  Created by Andres Pulgarin on 6/4/23.
//

import SwiftUI

@main
struct CoreDataChallengeApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}

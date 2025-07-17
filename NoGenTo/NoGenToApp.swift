//
//  NoGenToApp.swift
//  NoGenTo
//
//  Created by Fernando Gabriel Martinez on 17/07/25.
//

import SwiftUI

@main
struct NoGenToApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

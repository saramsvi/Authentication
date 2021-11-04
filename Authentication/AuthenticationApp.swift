//
//  AuthenticationApp.swift
//  Authentication
//
//  Created by MSVI on 4.11.21.
//

import SwiftUI

@main
struct AuthenticationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

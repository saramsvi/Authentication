//
//  AuthenticationApp.swift
//  Authentication
//
//  Created by MSVI on 4.11.21.
//

import SwiftUI
import Firebase
import CoreData
@main
struct AuthenticationApp: App {
    let persistenceController = PersistenceController.shared
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            SignUpView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

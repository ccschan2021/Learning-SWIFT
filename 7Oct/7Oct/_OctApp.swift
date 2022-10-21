//
//  _OctApp.swift
//  7Oct
//
//  Created by Steve Chan on 7/10/2022.
//

import SwiftUI

@main
struct _OctApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

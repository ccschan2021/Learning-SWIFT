//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Steve Chan on 2/11/2022.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}

//
//  NC1_ChallengeApp.swift
//  NC1-Challenge
//
//  Created by Domenico Mennillo on 15/11/23.
//

import SwiftUI
import SwiftData


@main
struct RemindersApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.accessibilityEnabled,true)
        }
        .modelContainer(for: Reminder.self)
        
    }
        
}

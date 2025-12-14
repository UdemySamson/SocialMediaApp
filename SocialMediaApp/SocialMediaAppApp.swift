//
//  SocialMediaAppApp.swift
//  SocialMediaApp
//
//  Created by Alexandre Samson on 14.12.25.
//

import SwiftUI
import Firebase
import FirebaseCore

@main
struct SocialMediaAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

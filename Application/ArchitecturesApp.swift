//
//  ArchitecturesApp.swift
//  Architectures
//
//  Created by Andras Olah on 2026. 01. 31..
//

import SwiftUI

@main
struct ArchitecturesApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self)
    private var appDelegate
    
    @State private var started: Bool = false
    @State private var showSplash = true
    
    var body: some Scene {
        WindowGroup {
            HStack {
                if showSplash {
                    SplashView(loadingFinished: started) {
                        showSplash = false
                    }
                } else {
                    ArchitectureListView()
                }
            }
            .onAppear {
                Task {
                    print("Starting loading...")
                    try await DummyLoadingTask.load()
                    print("Finishing loading...")
                    started = true
                }
            }
        }
    }
}

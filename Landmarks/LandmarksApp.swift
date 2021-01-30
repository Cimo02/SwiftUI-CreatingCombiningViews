//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Tyler Ciarmataro on 1/28/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    // modelData must be initialized as a @StateObject once in the app
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

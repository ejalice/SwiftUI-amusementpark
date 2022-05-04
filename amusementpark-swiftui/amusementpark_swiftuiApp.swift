//
//  amusementpark_swiftuiApp.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/02.
//

import SwiftUI

@main
struct amusementpark_swiftuiApp: App {
    
    @StateObject private var attractionDataController = AttractionDataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, attractionDataController.container.viewContext)
        }
    }
}

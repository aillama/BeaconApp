//
//  BeaconAppApp.swift
//  BeaconApp
//
//  Created by Ananya Gogula on 7/29/25.
//

import SwiftUI

@main
struct BeaconAppApp: App {
    @StateObject private var SharedData = sharedData()
    
    var body: some Scene {
        WindowGroup {
            welcomePage()
                .environmentObject(SharedData)
        }
    }
}

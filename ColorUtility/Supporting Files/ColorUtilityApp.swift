//
//  ColorUtilityApp.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

@main
struct ColorUtilityApp: App {

    let colorManager = ColorManager()
    
    var body: some Scene {
        WindowGroup {
            UtilitiesTabView()
                .environmentObject(colorManager)
        }
    }
}

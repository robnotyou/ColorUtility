//
//  ResultsView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

/// **ResultsView**
///
/// * "Settings" area
/// * The generated color's Swift code
/// * "Copy" (to clipboard) button
///
struct ResultsView: View {
    
    private let placeholderText = "Enter an 8-digit hex color, or a 6-digit hex color and (optional) % alpha"
    
    @EnvironmentObject var colorManager: ColorManager
    
    var body: some View {
        HStack {
            SettingsView()
            Divider()
            Text(colorManager.color?.asSwiftCode(forPlatform: colorManager.platform) ?? placeholderText)
                .background(colorManager.isCopyingCode ? Color(NSColor.selectedTextBackgroundColor) : Color.clear)
            Spacer()
            ControlsView()
        }
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
            .environmentObject(ColorManager())
    }
}

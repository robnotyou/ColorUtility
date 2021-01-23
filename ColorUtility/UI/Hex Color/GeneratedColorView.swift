//
//  InfoView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

/// **GeneratedColorView**
///
/// * Shows the generated color's Swift code
/// * And a "Copy" (to clipboard) button
///
struct GeneratedColorView: View {
    
    private let placeholderText = "Enter an 8-digit hex color, or a 6-digit hex color and (optional) % alpha"
    
    @EnvironmentObject var colorManager: ColorManager
    
    var body: some View {
        HStack {
            PickerView()
            Divider()
            Text(colorManager.color?.asSwiftCode(forPlatform: colorManager.platform) ?? placeholderText)
                .background(colorManager.isCopyingCode ? Color(NSColor.selectedTextBackgroundColor) : Color.clear)
            Spacer()
            CopyView()
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratedColorView()
            .environmentObject(ColorManager())
    }
}

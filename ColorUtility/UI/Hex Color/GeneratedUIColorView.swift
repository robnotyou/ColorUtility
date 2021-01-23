//
//  InfoView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

/// **GeneratedUIColorView**
///
/// * Shows the generated code
/// * And a "Copy" (to clipboard) button
///
struct GeneratedUIColorView: View {
    
    @EnvironmentObject var colorManager: ColorManager
    
    var body: some View {
        HStack {
            Text(colorManager.generatedCode)
                .background(colorManager.isCopyingCode ? Color(NSColor.selectedTextBackgroundColor) : Color.clear)
            Spacer()
            CopyView()
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratedUIColorView()
            .environmentObject(ColorManager())
    }
}

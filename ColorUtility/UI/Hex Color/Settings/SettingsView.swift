//
//  SettingsView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

/// **SettingsView**
///
/// * Available settings, that the user can customize
///
struct SettingsView: View {
    
    var body: some View {
        VStack {
            PlatformPickerView()
            Spacer()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(ColorManager())
    }
}

//
//  PlatformPickerView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

/// **PlatformPickerView**
///
/// * Allows the user to choose the target platform
///
struct PlatformPickerView: View {
    
    @EnvironmentObject var colorManager: ColorManager
    
    var body: some View {
        Picker(selection: $colorManager.platform, label: Text("Platform:")) {
            ForEach(Platform.allCases, id: \.rawValue) { platform in
                Text(platform.rawValue).tag(platform)
                    .fixedSize(horizontal: true, vertical: false)
            }
        }
        .pickerStyle(RadioGroupPickerStyle())
    }
}

struct PlatformPickerView_Previews: PreviewProvider {
    static var previews: some View {
        PlatformPickerView()
            .environmentObject(ColorManager())
    }
}

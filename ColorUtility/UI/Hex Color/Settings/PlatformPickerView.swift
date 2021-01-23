//
//  PlatformPickerView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

struct PlatformPickerView: View {
    
    @EnvironmentObject var colorManager: ColorManager
    
    var body: some View {
        Picker(selection: $colorManager.platform, label: Text("Platform:")) {
            ForEach(Platform.allCases, id: \.rawValue) { p in
                Text(p.rawValue).tag(p)
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

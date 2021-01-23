//
//  PickerView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

struct PickerView: View {
    
    @State private var platform = Platform.iOS
//    @EnvironmentObject var colorManager: ColorManager
    
    var body: some View {
        Picker(selection: $platform, label: Text("Platform:")) {
            ForEach(Platform.allCases, id: \.rawValue) { p in
                Text(p.rawValue).tag(p)
                    .fixedSize(horizontal: true, vertical: false)
            }
        }
        .pickerStyle(RadioGroupPickerStyle())
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
//            .environmentObject(ColorManager())
    }
}

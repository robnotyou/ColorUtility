//
//  InputHexColorView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

/// **InputHexColorView**
///
/// * Allow the user to input a hexColor, and an alpha
///
struct InputHexColorView: View {
    
    @EnvironmentObject var colorManager: ColorManager
    @State fileprivate var hexColor: String = ""
    @State fileprivate var alpha: String = ""

    var body: some View {
        HStack {
            Text("Hex Color:")
            TextField("Enter hex color...", text: $hexColor, onCommit: {
                colorManager.didEnter(hexColor: hexColor, alpha: alpha)
            })
            Text("Alpha (%):")
            TextField("Enter Alpha...", text: $alpha, onCommit: {
                colorManager.didEnter(hexColor: hexColor, alpha: alpha)
            })
        }
        .padding()
    }
}

struct InputHexColorView_Previews: PreviewProvider {
    static var previews: some View {
        InputHexColorView()
            .environmentObject(ColorManager())
    }
}

//
//  InputHexColorView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

/// **InputHexColorView**
///
/// * Allow the user to input a hex color
///
struct InputHexColorView: View {
    
    @EnvironmentObject var colorManager: ColorManager

    var body: some View {
        Text("Input Hex Color...")
    }
}

struct InputHexColorView_Previews: PreviewProvider {
    static var previews: some View {
        InputHexColorView()
            .environmentObject(ColorManager())
    }
}

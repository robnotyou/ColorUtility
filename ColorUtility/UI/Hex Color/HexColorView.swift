//
//  HexColorView.swift
//  ColorUtility
//
//  Created by Rob on 23/01/2021.
//

import SwiftUI

/// **HexColorView**
///
/// * Allow the user to input a hex color and alpha
/// * Show code for the equivalent UIColor
///
struct HexColorView: View {
    
    var body: some View {
        VStack {
            InputHexColorView()
            GeneratedColorView()
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 8, trailing: 8))
        }
    }
}

struct HexColorView_Previews: PreviewProvider {
    static var previews: some View {
        HexColorView()
    }
}
